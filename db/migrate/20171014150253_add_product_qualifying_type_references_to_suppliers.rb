class AddProductQualifyingTypeReferencesToSuppliers < ActiveRecord::Migration
  def change
    add_reference :suppliers, :product_qualifying_type, index: true, foreign_key: true
  end
end
