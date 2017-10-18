class AddSlugToHomies < ActiveRecord::Migration
  def change
    add_column :homies, :slug, :string
    add_index :homies, :slug, unique: true
  end
end
