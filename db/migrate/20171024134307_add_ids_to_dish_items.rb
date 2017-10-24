class AddIdsToDishItems < ActiveRecord::Migration
  def change
    add_column :dish_items, :homy_id, :integer
    add_column :dish_items, :supplier_id, :integer
    add_column :dish_items, :raw_food_id, :integer
  end
end
