class AddBelongsToMenus < ActiveRecord::Migration
  def change
    add_reference :menus, :place, index: true, foreign_key: true
    add_reference :menus, :food_delivery, index: true, foreign_key: true
    add_reference :menus, :homy, index: true, foreign_key: true
    add_reference :menus, :online_retail, index: true, foreign_key: true
    add_reference :menus, :raw_food, index: true, foreign_key: true
    add_reference :menus, :supplier, index: true, foreign_key: true
    add_reference :menus, :caterer, index: true, foreign_key: true
    add_reference :menus, :baker, index: true, foreign_key: true
  end
end
