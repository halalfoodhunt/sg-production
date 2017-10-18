class AddProductCategoryReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :product_category, index: true, foreign_key: true
  end
end
