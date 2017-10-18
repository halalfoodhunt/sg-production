class CreateConfectionerServiceTypes < ActiveRecord::Migration
  def change
    create_table :confectioner_service_types do |t|
      t.integer :baker_type_id
      t.integer :baker_service_type_id

      t.timestamps null: false
    end
  end
end
