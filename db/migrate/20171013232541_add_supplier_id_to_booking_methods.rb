class AddSupplierIdToBookingMethods < ActiveRecord::Migration
  def change
    add_column :booking_methods, :supplier_id, :integer
  end
end
