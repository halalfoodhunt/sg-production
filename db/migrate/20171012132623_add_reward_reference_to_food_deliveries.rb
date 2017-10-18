class AddRewardReferenceToFoodDeliveries < ActiveRecord::Migration
  def change
    add_reference :food_deliveries, :reward, index: true, foreign_key: true
    add_reference :food_deliveries, :qualifying_type, index: true, foreign_key: true
  end
end
