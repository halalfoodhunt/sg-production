class CreateOnlineRetailDishItems < ActiveRecord::Migration
  def change
    create_table :online_retail_dish_items do |t|
      t.integer :online_retail_id
      t.integer :online_retail_menu_item_id

      t.timestamps null: false
    end
  end
end
