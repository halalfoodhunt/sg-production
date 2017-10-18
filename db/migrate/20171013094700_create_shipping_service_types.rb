class CreateShippingServiceTypes < ActiveRecord::Migration
  def change
    create_table :shipping_service_types do |t|
      t.integer :delivery_service_type_id
      t.integer :food_delivery_id

      t.timestamps null: false
    end
  end
end
