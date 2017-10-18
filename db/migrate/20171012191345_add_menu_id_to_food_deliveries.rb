class AddMenuIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :menu_id, :integer
  end
end
