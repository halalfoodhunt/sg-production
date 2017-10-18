class AddDeliveryLocationReferencesToFoodDeliveries < ActiveRecord::Migration
  def change
    add_reference :food_deliveries, :delivery_location, index: true, foreign_key: true
  end
end
