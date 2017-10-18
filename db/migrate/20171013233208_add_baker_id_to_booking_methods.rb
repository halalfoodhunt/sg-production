class AddBakerIdToBookingMethods < ActiveRecord::Migration
  def change
    add_column :booking_methods, :baker_id, :integer
  end
end
