class AddFoodDeliveriesMenuItemIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :food_deliveries_menu_item_id, :integer
  end
end
