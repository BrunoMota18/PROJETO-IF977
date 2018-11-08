class CreateCrudUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :crud_usuarios do |t|

      t.timestamps
    end
  end
end
