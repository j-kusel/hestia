import logging, sys, time, os

from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

from tensorflow_serving.apis import model_service_pb2_grpc
from tensorflow_serving.apis import model_management_pb2
from tensorflow_serving.config import model_server_config_pb2

import grpc

# from https://stackoverflow.com/questions/54440762/tensorflow-serving-update-model-config-add-additional-models-at-runtime

def add_model_config(host, name):
    channel = grpc.insecure_channel(host)
    stub = model_service_pb2_grpc.ModelServiceStub(channel)
    request = model_management_pb2.ReloadConfigRequest()
    model_server_config = model_server_config_pb2.ModelServerConfig()

    config_list = model_server_config_pb2.ModelConfigList()
    one_config = config_list.config.add()
    one_config.name = name
    one_config.base_path = os.path.join('/models', name)
    one_config.model_platform = 'tensorflow'

    model_server_config.model_config_list.CopyFrom(config_list)

    request.config.CopyFrom(model_server_config)
    response = stub.HandleReloadConfigRequest(request, 10)

    if response.status.error_code == 0:
        print('Reload successful')
    else:
        print('Reload failed: {}: {}'.format(response.status.error_code, response.status.error_message))


class _Updater(FileSystemEventHandler):
    def on_any_event(self, event):
        #self.handler(event)
        name = event.src_path.split('/')[-1]
        if name[0] is '.' or not event.is_directory:
            return
        if (event.event_type is 'created'):
            print(name)
            add_model_config('localhost:8500', name)
            

class Watcher(object):
    
    def __init__(self, models_path, event):
        self.observer = Observer()
        self.observer.schedule(_Updater(), models_path, recursive=False)
        self.observer.start()

    def stop(self):
        self.observer.stop()
        self.observer.join()
