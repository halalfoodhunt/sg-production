class AddOpeningHourIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :opening_hour_id, :integer
  end
end
