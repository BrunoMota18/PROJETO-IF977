class Mensagem < ApplicationRecord
  belongs_to :conversa
  belongs_to :user

  validates :conteudo, presence: true
end
