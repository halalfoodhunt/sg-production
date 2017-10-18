class AddReferencesToOpeningHours < ActiveRecord::Migration
  def change
    add_reference :opening_hours, :baker, index: true, foreign_key: true
    add_reference :opening_hours, :supplier, index: true, foreign_key: true
    add_reference :opening_hours, :caterer, index: true, foreign_key: true
    add_reference :opening_hours, :food_delivery, index: true, foreign_key: true
    add_reference :opening_hours, :raw_food, index: true, foreign_key: true
  end
end
