from watcher import Watcher
import time 

def printer(x):
    print(x)
    

ob = Watcher('./models', printer)

try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    ob.stop()
    
