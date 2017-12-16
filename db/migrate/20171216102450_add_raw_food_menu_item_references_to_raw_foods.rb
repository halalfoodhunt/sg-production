class AddRawFoodMenuItemReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :raw_food_menu_item, index: true, foreign_key: true
  end
end
