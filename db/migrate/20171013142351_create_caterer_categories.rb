class CreateCatererCategories < ActiveRecord::Migration
  def change
    create_table :caterer_categories do |t|
      t.integer :caterer_id
      t.integer :caterer_type_id

      t.timestamps null: false
    end
  end
end
