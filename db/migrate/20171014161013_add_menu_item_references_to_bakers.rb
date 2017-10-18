class AddMenuItemReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :menu_item, index: true, foreign_key: true
  end
end
