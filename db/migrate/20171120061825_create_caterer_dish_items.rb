class CreateCatererDishItems < ActiveRecord::Migration
  def change
    create_table :caterer_dish_items do |t|
      t.integer :caterer_id
      t.integer :caterer_menu_item_id

      t.timestamps null: false
    end
  end
end
