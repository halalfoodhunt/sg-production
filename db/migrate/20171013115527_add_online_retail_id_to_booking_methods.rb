class AddOnlineRetailIdToBookingMethods < ActiveRecord::Migration
  def change
    add_column :booking_methods, :online_retail_id, :integer
  end
end
