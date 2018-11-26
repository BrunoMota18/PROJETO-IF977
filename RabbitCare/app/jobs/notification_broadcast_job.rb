class NotificationBroadcastJob < ApplicationJob
    queue_as :default

    def perform(mensagem)
      nova_mensagem = render_mensagem(mensagem)
      ActionCable.server.broadcast "notifications_#{mensagem.user.id}_channel",
                                   mensagem: nova_mensagem,
                                   conversa_id: mensagem.conversa.id

      ActionCable.server.broadcast "notifications_#{mensagem.destinatario.id}_channel",
                             notification: render_notification(mensagem),
                             mensagem: nova_mensagem,
                             conversa_id: mensagem.conversa.id
    end

    private

    def render_notification(mensagem)
      NotificationsController.render partial: 'notifications/notification', locals: {mensagem: mensagem}
    end

    def render_mensagem(mensagem)
      MensagemsController.render partial: 'mensagems/mensagem', locals: {mensagem: mensagem}
    end
  end