class CreateOnlineRetailMenuItems < ActiveRecord::Migration
  def change
    create_table :online_retail_menu_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
