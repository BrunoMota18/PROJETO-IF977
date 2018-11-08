class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :Proximo_procedimento
      t.string :Adicionar_procedimento
      t.string :Concluir_Procedimento
      t.string :Descricao_procedimento
      t.string :Dados_Paciente
      t.string :Procedimentos_cancelados
      t.string :Procedimentos_realizados
      t.string
      

      t.timestamps
    end
  end
end
