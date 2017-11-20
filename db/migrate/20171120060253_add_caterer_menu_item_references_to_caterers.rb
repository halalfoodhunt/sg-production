class AddCatererMenuItemReferencesToCaterers < ActiveRecord::Migration
  def change
    add_reference :caterers, :caterer_menu_item, index: true, foreign_key: true
  end
end
