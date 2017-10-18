class CreateFunctionTypes < ActiveRecord::Migration
  def change
    create_table :function_types do |t|
      t.integer :caterer_id
      t.integer :event_type_id

      t.timestamps null: false
    end
  end
end
