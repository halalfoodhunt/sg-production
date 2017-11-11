class CreateFoodDeliveriesMenuItems < ActiveRecord::Migration
  def change
    create_table :food_deliveries_menu_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
