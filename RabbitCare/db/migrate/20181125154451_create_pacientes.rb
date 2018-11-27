class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :cpf_responsavel
      t.string :nome_responsavel
      t.string :cpf
      t.string :nome
      t.string :estado
      t.string :medico_crm
      t.string :enfermeiro_coren

      t.timestamps
    end

    add_foreign_key :pacientes, :users, column: :medico_crm, primary_key: :crm
    add_foreign_key :pacientes, :users, column: :enfermeiro_coren, primary_key: :coren

    add_index :pacientes, :cpf,                  unique: true
    add_index :pacientes, :enfermeiro_coren  
    add_index :pacientes, :medico_crm       

  end
end
