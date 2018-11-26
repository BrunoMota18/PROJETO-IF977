class NotificationsChannel < ApplicationCable::Channel
    def subscribed
      stream_from("notifications_#{current_user.id}_channel")
    end
  
    def unsubscribed
    end
  
    def send_mensagem(data)
      conversa = Conversa.find_by(id: data['conversa_id'])
      if conversa && conversa.participa?(current_user)
        mensagem = current_user.mensagems.build({conteudo: data['mensagem']})
        mensagem.conversa = conversa
        mensagem.save!
      end
    end
  end