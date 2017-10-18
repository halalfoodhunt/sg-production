class CreateCookingTypes < ActiveRecord::Migration
  def change
    create_table :cooking_types do |t|
      t.integer :caterer_id
      t.integer :cuisine_type_id

      t.timestamps null: false
    end
  end
end
