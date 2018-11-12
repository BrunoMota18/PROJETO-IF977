class CreateConversas < ActiveRecord::Migration[5.2]
  def change
    create_table :conversas do |t|
      t.integer :autor_id
      t.integer :destinatario_id

      t.timestamps
    end
    add_index :conversas, :autor_id
    add_index :conversas, :destinatario_id
    add_index :conversas, [:autor_id, :destinatario_id], unique: true
  end
end
