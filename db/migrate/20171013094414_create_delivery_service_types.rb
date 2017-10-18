class CreateDeliveryServiceTypes < ActiveRecord::Migration
  def change
    create_table :delivery_service_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
