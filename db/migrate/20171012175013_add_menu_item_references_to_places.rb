class AddMenuItemReferencesToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :menu_item, index: true, foreign_key: true
  end
end
