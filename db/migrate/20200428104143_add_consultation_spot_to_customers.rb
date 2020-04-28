class AddConsultationSpotToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :consultation_spot
  end
end
