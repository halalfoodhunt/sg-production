class AddOpeningHourIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :opening_hour_id, :integer
  end
end
