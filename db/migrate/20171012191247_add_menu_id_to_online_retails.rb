class AddMenuIdToOnlineRetails < ActiveRecord::Migration
  def change
    add_column :online_retails, :menu_id, :integer
  end
end
