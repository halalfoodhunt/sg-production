class CreateHomiesDishItems < ActiveRecord::Migration
  def change
    create_table :homies_dish_items do |t|
      t.integer :homy_id
      t.integer :homies_menu_item_id

      t.timestamps null: false
    end
  end
end
