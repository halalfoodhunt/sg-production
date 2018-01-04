class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :place_id
      t.integer :friend_id
      t.text :content

      t.timestamps null: false
    end
  end
end
