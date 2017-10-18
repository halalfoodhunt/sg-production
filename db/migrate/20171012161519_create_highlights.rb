class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.integer :place_id
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end
