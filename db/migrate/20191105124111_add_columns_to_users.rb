class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nom, :string
    add_column :users, :adresse_hotel, :string
    add_column :users, :nom_hotel, :string
    add_column :users, :telephone, :string
  end
end
