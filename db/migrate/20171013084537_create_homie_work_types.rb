class CreateHomieWorkTypes < ActiveRecord::Migration
  def change
    create_table :homie_work_types do |t|
      t.integer :homie_service_type_id
      t.integer :homy_id

      t.timestamps null: false
    end
  end
end
