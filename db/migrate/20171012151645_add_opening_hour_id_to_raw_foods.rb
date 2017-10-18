class AddOpeningHourIdToRawFoods < ActiveRecord::Migration
  def change
    add_column :raw_foods, :opening_hour_id, :integer
  end
end
