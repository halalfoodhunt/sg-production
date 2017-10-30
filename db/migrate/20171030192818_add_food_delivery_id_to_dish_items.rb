class AddFoodDeliveryIdToDishItems < ActiveRecord::Migration
  def change
    add_column :dish_items, :food_delivery_id, :integer
  end
end
