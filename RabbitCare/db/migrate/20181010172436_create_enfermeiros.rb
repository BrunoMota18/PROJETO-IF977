class CreateEnfermeiros < ActiveRecord::Migration[5.2]
  def change
    create_table :enfermeiros do |t|
      t.string :login
      t.string :senha
      t.string :cpf
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :coren
      t.text :tarefas

      t.timestamps
    end
    add_index :enfermeiros, :login, unique: true
    add_index :enfermeiros, :cpf, unique: true
    add_index :enfermeiros, :email, unique: true
    add_index :enfermeiros, :coren, unique: true
  end
end
