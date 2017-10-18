class AddOnlineRetailServiceTypeToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :online_retail_service_type, index: true, foreign_key: true
  end
end
