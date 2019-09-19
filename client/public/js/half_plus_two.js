var port = location.port ?
    ':' + location.port :
    '';

$(document).ready(() => {
    $('#submit').click((e) => {
        e.preventDefault();
        $.post(`http://${location.hostname}${port}/half_plus_two`, { 
            instances: [ $('#num1').val(), $('#num2').val(), $('#num3').val() ]
        })
            .done((res) => console.log(res))
            .fail((err) => console.log(err.responseJSON.errors[0]));
    })
});
