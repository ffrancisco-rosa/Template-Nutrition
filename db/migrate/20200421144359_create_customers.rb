class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null:false, default: "John"
      t.string :last_name, null:false, default: "Doe"
      t.string :age, null:false, default: "default"
      t.string :email, null:false, default: "default@email.com"
      t.string :phone_bumber, null:false, default: "default"
      t.boolean :watts, default: false

      t.timestamps
    end
  end
end
