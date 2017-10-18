class AddVerifyingDocumentIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :verifying_document_id, :integer
  end
end
