class AddVerifyingDocumentIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :verifying_document_id, :integer
  end
end
