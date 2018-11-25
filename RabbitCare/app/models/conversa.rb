class Conversa < ApplicationRecord
    belongs_to :autor, class_name: 'User'
    belongs_to :destinatario, class_name: 'User'    
    
    validates :autor, uniqueness: {scope: :destinatario}

    has_many :mensagems, -> { order(created_at: :asc) }, dependent: :destroy

    scope :participando, -> (user) do
        where("(conversas.autor_id = ? OR conversas.destinatario_id = ?)", user.id, user.id)
    end

    def with(current_user)
        autor == current_user ? destinatario : autor
    end

    def participa?(user)
        autor == user || destinatario == user
    end

    scope :between, -> (sender_id, destinatario_id) do
        where(autor_id: sender_id, destinatario_id: destinatario_id).or(where(autor_id: destinatario_id, destinatario_id: sender_id)).limit(1)
    end
end
