class CreateFoodDeliveriesDishItems < ActiveRecord::Migration
  def change
    create_table :food_deliveries_dish_items do |t|
      t.integer :food_delivery_id
      t.integer :food_deliveries_menu_item_id

      t.timestamps null: false
    end
  end
end
