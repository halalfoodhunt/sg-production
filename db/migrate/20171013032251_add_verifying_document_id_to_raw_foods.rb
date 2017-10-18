class AddVerifyingDocumentIdToRawFoods < ActiveRecord::Migration
  def change
    add_column :raw_foods, :verifying_document_id, :integer
  end
end
