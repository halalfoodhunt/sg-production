class AddDeliveryLocationReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :delivery_location, index: true, foreign_key: true
  end
end
