class AddOnlineRetailMenuItemReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :online_retail_menu_item, index: true, foreign_key: true
  end
end
