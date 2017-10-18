class CreateRawFoodProductTypes < ActiveRecord::Migration
  def change
    create_table :raw_food_product_types do |t|
      t.integer :raw_food_product_category_id
      t.integer :raw_food_id

      t.timestamps null: false
    end
  end
end
