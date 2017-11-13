class AddOpeningHourIdToHomies < ActiveRecord::Migration
  def change
    add_column :homies, :opening_hour_id, :integer
  end
end
