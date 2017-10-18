class CreateDiningTypes < ActiveRecord::Migration
  def change
    create_table :dining_types do |t|
      t.string :name
      t.attachment :icon

      t.timestamps null: false
    end
  end
end
