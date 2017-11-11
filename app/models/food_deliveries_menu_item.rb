class FoodDeliveriesMenuItem < ActiveRecord::Base
    has_many :food_deliveries_dish_items
    has_many :food_deliveries, :through => :food_deliveries_dish_items
end
