class AddDeliveryLocationReferencesToHomies < ActiveRecord::Migration
  def change
    add_reference :homies, :delivery_location, index: true, foreign_key: true
  end
end
