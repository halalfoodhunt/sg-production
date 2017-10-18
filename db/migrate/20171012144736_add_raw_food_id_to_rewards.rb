class AddRawFoodIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :raw_food_id, :integer
  end
end
