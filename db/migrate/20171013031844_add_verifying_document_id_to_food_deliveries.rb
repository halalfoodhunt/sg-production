class AddVerifyingDocumentIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :verifying_document_id, :integer
  end
end
