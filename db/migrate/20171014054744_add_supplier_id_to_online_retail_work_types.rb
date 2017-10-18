class AddSupplierIdToOnlineRetailWorkTypes < ActiveRecord::Migration
  def change
    add_column :online_retail_work_types, :supplier_id, :integer
  end
end
