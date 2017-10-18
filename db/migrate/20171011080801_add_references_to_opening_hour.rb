class AddReferencesToOpeningHour < ActiveRecord::Migration
  def change
    add_reference :opening_hours, :day, index: true, foreign_key: true
  end
end
