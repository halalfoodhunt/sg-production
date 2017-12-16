class CreateRawFoodDishItems < ActiveRecord::Migration
  def change
    create_table :raw_food_dish_items do |t|
      t.integer :raw_food_id
      t.integer :raw_food_menu_item_id

      t.timestamps null: false
    end
  end
end
