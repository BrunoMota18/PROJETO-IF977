class CreateMedicamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicamentos do |t|
      t.string :nome
      t.text :descricao
      t.string :cpf

      t.timestamps
    end
    add_index :medicamentos, :cpf, unique: true
  end
end
