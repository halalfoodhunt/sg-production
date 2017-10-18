class CreateOnlineRetailServiceTypes < ActiveRecord::Migration
  def change
    create_table :online_retail_service_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
