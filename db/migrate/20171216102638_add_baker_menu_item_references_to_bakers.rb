class AddBakerMenuItemReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :baker_menu_item, index: true, foreign_key: true
  end
end
