class CreateSupplierMenuItems < ActiveRecord::Migration
  def change
    create_table :supplier_menu_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
