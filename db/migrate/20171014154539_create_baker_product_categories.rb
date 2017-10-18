class CreateBakerProductCategories < ActiveRecord::Migration
  def change
    create_table :baker_product_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
