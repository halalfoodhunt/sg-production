class AddMenuIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :menu_id, :integer
  end
end
