class AddRawFoodIdToBookingMethods < ActiveRecord::Migration
  def change
    add_column :booking_methods, :raw_food_id, :integer
  end
end
