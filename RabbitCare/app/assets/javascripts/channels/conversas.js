function fadeOutEffect() {
    var fadeTarget = document.querySelectorAll('#notification');
    for(i = 0; i < fadeTarget.length; i++){
        fadeTarget[i].outerHTML = "";
        /*
        var fadeEffect = setInterval(function () {
            if (!fadeTarget[i].style.opacity) {
                fadeTarget[i].style.opacity = 1;
            }
            if (fadeTarget[i].style.opacity > 0) {
                fadeTarget[i].style.opacity -= 0.1;
            } else {
                clearInterval(fadeEffect);
            }
        }, 200);
        */
    }
}

/*var chat_app_inicializado = false;*/

document.addEventListener("turbolinks:load", function() {

    var mensagens = document.getElementById('conversa-conteudo')
    try{
        var mensagens_size = mensagens.getElementsByTagName('p').length;
    }
    catch(error){
        var mensagens_size = 0;
    }

    /*if(!chat_app_inicializado){*/
        App.chat = App.cable.subscriptions.create({channel: 'NotificationsChannel'}, 
            {
                send_mensagem: function(mensagem, conversa_id) {
                    this.perform('send_mensagem', {mensagem: mensagem, conversa_id: conversa_id})
                },

                connected: function () {
                    // Called when the subscription is ready for use on the server

                },

                disconnected: function () {
                    // Called when the subscription has been terminated by the server
                },

                received: function(data) {
                    // Called when there's incoming data on the websocket for this channel. You could put plain jQuery into here to replace a div with html, for example.
                    if(mensagens_size > 0 && mensagens.getAttribute('data-conversa-id') == data['conversa_id']) { 
                        mensagens.innerHTML += data['mensagem'];
                        mensagens.scrollTop = mensagens.scrollHeight - mensagens.clientHeight;
                        Turbolinks.visit(window.location);
                    }
                    else if(data['notification']){
                        document.body.innerHTML += data['notification'];
                        var close_notifications = document.getElementsByClassName('close');
                        if(close_notifications){
                            for(i = 0; i < close_notifications.length; i++){
                                close_notifications[i].addEventListener('click', fadeOutEffect);
                             }  
                        } 
                    }
                }
            }
        );
        /*chat_app_inicializado = true;*/
    /*}*/

    if(mensagens_size > 0){
        mensagens.scrollTop = mensagens.scrollHeight - mensagens.clientHeight;
        document.getElementById('new_mensagem').addEventListener('submit', function(e){
                var mensagem_conteudo = document.getElementById('mensagem_conteudo');
                if(mensagem_conteudo.value.trim().length > 1) {
                    App.chat.send_mensagem(mensagem_conteudo.value, document.getElementById('conversa_id').value);
                }
                mensagem_conteudo.value = '';
                e.preventDefault();
                Turbolinks.visit(window.location);
            }, false
        );
    }

});