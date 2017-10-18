class CreateShippingLocations < ActiveRecord::Migration
  def change
    create_table :shipping_locations do |t|
      t.integer :delivery_location_id
      t.integer :homy_id
      t.integer :online_retail_id
      t.integer :food_delivery_id
      t.integer :supplier_id
      t.integer :raw_food_id
      t.integer :baker_id

      t.timestamps null: false
    end
  end
end
