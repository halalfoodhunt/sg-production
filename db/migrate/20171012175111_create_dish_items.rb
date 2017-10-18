class CreateDishItems < ActiveRecord::Migration
  def change
    create_table :dish_items do |t|
      t.integer :place_id
      t.integer :menu_item_id

      t.timestamps null: false
    end
  end
end
