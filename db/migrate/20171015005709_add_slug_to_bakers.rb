class AddSlugToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :slug, :string
    add_index :bakers, :slug, unique: true
  end
end
