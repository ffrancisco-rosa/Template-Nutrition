class AddUserData < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :role, :integer, default: 0
    add_column :users, :marketing, :boolean, default: false
  end
end
