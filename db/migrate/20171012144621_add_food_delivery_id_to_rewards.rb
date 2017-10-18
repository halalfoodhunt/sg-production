class AddFoodDeliveryIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :food_delivery_id, :integer
  end
end
