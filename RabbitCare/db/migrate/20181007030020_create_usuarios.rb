class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha
      t.string :cpf
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
