class AddVerifyingDocumentIdToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :verifying_document_id, :integer
  end
end
