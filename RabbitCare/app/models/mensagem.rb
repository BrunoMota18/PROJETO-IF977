class Mensagem < ApplicationRecord
  belongs_to :conversa
  belongs_to :user

  validates :conteudo, presence: true

  after_create_commit do
    NotificationBroadcastJob.perform_later(self)
  end

  def destinatario
    if conversa.autor == conversa.destinatario || conversa.destinatario == user
      conversa.autor
    else
      conversa.destinatario
    end
  end

end
