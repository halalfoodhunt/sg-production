class AddOpeningHourIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :opening_hour_id, :integer
  end
end
