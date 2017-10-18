class CreateCookingServiceTypes < ActiveRecord::Migration
  def change
    create_table :cooking_service_types do |t|
      t.integer :caterer_id
      t.integer :caterer_service_type_id

      t.timestamps null: false
    end
  end
end
