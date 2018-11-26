class CreateUtensilios < ActiveRecord::Migration[5.2]
  def change
    create_table :utensilios do |t|
      t.string :nome
      t.text :descricao
      t.string :cpf

      t.timestamps
    end
    add_index :utensilios, :cpf, unique: true
  end
end
