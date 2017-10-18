class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.attachment :image
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
