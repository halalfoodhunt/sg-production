class AddMenuIdToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :menu_id, :integer
  end
end
