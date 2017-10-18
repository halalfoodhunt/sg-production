class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.text :terms
      t.references :discount, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
