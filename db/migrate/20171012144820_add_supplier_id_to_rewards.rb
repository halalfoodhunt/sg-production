class AddSupplierIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :supplier_id, :integer
  end
end
