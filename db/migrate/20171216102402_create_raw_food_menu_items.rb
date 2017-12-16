class CreateRawFoodMenuItems < ActiveRecord::Migration
  def change
    create_table :raw_food_menu_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
