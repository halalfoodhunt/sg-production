class AddMenuIdToHomies < ActiveRecord::Migration
  def change
    add_column :homies, :menu_id, :integer
  end
end
