class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.integer :product_category_id
      t.integer :online_retail_id

      t.timestamps null: false
    end
  end
end
