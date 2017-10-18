class AddProductCategoryReferencesToSupplier < ActiveRecord::Migration
  def change
    add_reference :suppliers, :product_category, index: true, foreign_key: true
  end
end
