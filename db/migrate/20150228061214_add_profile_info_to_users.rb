class AddProfileInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipCode, :string
    add_column :users, :phone, :string
  end
end
