class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.references :merchant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
