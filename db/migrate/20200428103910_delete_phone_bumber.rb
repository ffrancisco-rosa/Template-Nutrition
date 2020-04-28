class DeletePhoneBumber < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :phone_bumber
    add_column :customers, :phone_number, :string, null:false, default: "default"
  end
end
