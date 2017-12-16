class CreateSupplierDishItems < ActiveRecord::Migration
  def change
    create_table :supplier_dish_items do |t|
      t.integer :supplier_id
      t.integer :supplier_menu_item_id

      t.timestamps null: false
    end
  end
end
