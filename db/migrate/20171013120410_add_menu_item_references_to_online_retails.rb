class AddMenuItemReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :menu_item, index: true, foreign_key: true
  end
end
