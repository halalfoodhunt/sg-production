class CreateQualifyingTypes < ActiveRecord::Migration
  def change
    create_table :qualifying_types do |t|
      t.string :name
      t.text :halal_summary

      t.timestamps null: false
    end
  end
end
