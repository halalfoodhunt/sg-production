class AddRawFoodProductCategoryReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :raw_food_product_category, index: true, foreign_key: true
  end
end
