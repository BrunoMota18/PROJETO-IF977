class AddOmniauthToEnfermeiro < ActiveRecord::Migration[5.2]
  def change
    add_column :enfermeiros, :name, :string
    add_column :enfermeiros, :provider, :string
    add_column :enfermeiros, :uid, :string
  end
end
