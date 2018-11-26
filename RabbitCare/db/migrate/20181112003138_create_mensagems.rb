class CreateMensagems < ActiveRecord::Migration[5.2]
  def change
    create_table :mensagems do |t|
      t.text :conteudo
      t.belongs_to :conversa, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
