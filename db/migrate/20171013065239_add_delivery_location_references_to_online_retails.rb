class AddDeliveryLocationReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :delivery_location, index: true, foreign_key: true
  end
end
