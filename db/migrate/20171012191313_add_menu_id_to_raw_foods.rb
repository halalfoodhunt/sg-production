class AddMenuIdToRawFoods < ActiveRecord::Migration
  def change
    add_column :raw_foods, :menu_id, :integer
  end
end
