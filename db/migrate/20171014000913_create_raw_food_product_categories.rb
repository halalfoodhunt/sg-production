class CreateRawFoodProductCategories < ActiveRecord::Migration
  def change
    create_table :raw_food_product_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
