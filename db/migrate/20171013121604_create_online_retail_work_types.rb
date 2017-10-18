class CreateOnlineRetailWorkTypes < ActiveRecord::Migration
  def change
    create_table :online_retail_work_types do |t|
      t.integer :online_retail_service_type_id
      t.integer :online_retail_id

      t.timestamps null: false
    end
  end
end
