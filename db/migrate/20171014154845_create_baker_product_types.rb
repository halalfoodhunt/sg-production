class CreateBakerProductTypes < ActiveRecord::Migration
  def change
    create_table :baker_product_types do |t|
      t.integer :baker_id
      t.integer :baker_product_category_id

      t.timestamps null: false
    end
  end
end
