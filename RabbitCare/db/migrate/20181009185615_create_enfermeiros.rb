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
  end
end
