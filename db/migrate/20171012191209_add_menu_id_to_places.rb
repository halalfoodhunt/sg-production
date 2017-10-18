class AddMenuIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :menu_id, :integer
  end
end
