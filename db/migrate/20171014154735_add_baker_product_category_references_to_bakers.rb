class AddBakerProductCategoryReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :baker_product_category, index: true, foreign_key: true
  end
end
