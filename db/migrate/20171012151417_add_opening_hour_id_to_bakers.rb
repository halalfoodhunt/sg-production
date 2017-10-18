class AddOpeningHourIdToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :opening_hour_id, :integer
  end
end
