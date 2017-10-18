class AddDeliveryServiceTypeReferencesToFoodDeliveries < ActiveRecord::Migration
  def change
    add_reference :food_deliveries, :delivery_service_type, index: true, foreign_key: true
  end
end
