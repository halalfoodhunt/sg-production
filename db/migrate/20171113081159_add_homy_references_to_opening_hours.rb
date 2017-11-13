class AddHomyReferencesToOpeningHours < ActiveRecord::Migration
  def change
    add_reference :opening_hours, :homy, index: true, foreign_key: true
  end
end
