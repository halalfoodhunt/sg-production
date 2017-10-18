class CreateBakerTypes < ActiveRecord::Migration
  def change
    create_table :baker_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
