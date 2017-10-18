class AddOnlineRetailServiceTypeReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :online_retail_service_type, index: true, foreign_key: true
  end
end
