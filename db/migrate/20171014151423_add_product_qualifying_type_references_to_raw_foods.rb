class AddProductQualifyingTypeReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :product_qualifying_type, index: true, foreign_key: true
  end
end
