class AddVerifyingDocumentIdToHomies < ActiveRecord::Migration
  def change
    add_column :homies, :verifying_document_id, :integer
  end
end
