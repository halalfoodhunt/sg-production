class AddDeliveryLocationReferencesToSuppliers < ActiveRecord::Migration
  def change
    add_reference :suppliers, :delivery_location, index: true, foreign_key: true
  end
end
