class AddSlugToRawFoods < ActiveRecord::Migration
  def change
    add_column :raw_foods, :slug, :string
    add_index :raw_foods, :slug, unique: true
  end
end
