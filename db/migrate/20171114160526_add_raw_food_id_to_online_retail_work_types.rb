class AddRawFoodIdToOnlineRetailWorkTypes < ActiveRecord::Migration
  def change
    add_column :online_retail_work_types, :raw_food_id, :integer
  end
end
