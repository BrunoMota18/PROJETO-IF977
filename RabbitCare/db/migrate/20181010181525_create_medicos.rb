class CreateMedicos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :cpf
      t.string :crm
      t.string :telefone

      t.timestamps
    end
    add_index :medicos, :cpf, unique: true
    add_index :medicos, :crm, unique: true
  end
end
