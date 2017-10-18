class AddSupplierIdToProductTypes < ActiveRecord::Migration
  def change
    add_column :product_types, :supplier_id, :integer
  end
end
