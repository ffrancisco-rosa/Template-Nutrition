class CreateWorkLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :work_locations do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :postal_code, null: false, default: "0000-000"
      t.references :nutri

      t.timestamps
    end
  end
end
