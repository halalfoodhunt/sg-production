class CreateOpeningHours < ActiveRecord::Migration
  def change
    create_table :opening_hours do |t|
      t.datetime :open
      t.datetime :close
      t.belongs_to :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
