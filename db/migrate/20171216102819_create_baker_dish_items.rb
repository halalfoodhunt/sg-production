class CreateBakerDishItems < ActiveRecord::Migration
  def change
    create_table :baker_dish_items do |t|
      t.integer :baker_id
      t.integer :baker_menu_item_id

      t.timestamps null: false
    end
  end
end
