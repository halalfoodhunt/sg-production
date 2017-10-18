class AddVerifyingDocumetIdToOnlineRetails < ActiveRecord::Migration
  def change
    add_column :online_retails, :verifying_document_id, :integer
  end
end
