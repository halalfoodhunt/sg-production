class AddMainOrderingMethodToFoodDeliveries < ActiveRecord::Migration
  def change
    add_reference :food_deliveries, :main_ordering_method, index: true, foreign_key: true
  end
end
