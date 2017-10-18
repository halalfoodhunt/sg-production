class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.integer :place_id
      t.integer :dining_type_id

      t.timestamps null: false
    end
  end
end
