class AddVerifyingDocumentIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :verifying_document_id, :integer
  end
end
