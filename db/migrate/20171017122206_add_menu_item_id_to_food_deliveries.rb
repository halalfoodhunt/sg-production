class AddMenuItemIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :menu_item_id, :integer
  end
end
