class CreateRabbitcares < ActiveRecord::Migration[5.2]
  def change
    create_table :rabbitcares do |t|
      t.string :addmedicamento
      t.string :removemedicamento

      t.timestamps
    end
  end
end
