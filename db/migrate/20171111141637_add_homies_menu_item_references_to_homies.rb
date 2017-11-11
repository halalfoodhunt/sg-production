class AddHomiesMenuItemReferencesToHomies < ActiveRecord::Migration
  def change
    add_reference :homies, :homies_menu_item, index: true, foreign_key: true
  end
end
