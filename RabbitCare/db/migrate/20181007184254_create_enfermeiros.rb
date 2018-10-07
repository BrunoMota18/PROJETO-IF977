class CreateEnfermeiros < ActiveRecord::Migration[5.2]
  def change
    create_table :enfermeiros do |t|
      t.references :usuarios, foreign_key: true
      t.string :coren
      t.text :tarefas #estudar a viabilidade de criar outra tabela para este multivalorado
      t.timestamps
    end
  end
end
