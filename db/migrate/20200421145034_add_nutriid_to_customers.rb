class AddNutriidToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :nutri, index: true
  end
end
