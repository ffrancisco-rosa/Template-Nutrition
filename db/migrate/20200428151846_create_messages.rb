class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :subject, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
