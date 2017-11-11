class AddFoodDeliveriesMenuItemReferencesToFoodDeliveries < ActiveRecord::Migration
  def change
    add_reference :food_deliveries, :food_deliveries_menu_item, index: true, foreign_key: true
  end
end
