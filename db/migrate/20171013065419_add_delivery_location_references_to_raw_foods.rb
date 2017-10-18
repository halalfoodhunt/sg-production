class AddDeliveryLocationReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :delivery_location, index: true, foreign_key: true
  end
end
