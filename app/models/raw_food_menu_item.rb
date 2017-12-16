class RawFoodMenuItem < ActiveRecord::Base
    has_many :raw_food_dish_items
    has_many :raw_foods, :through => :raw_food_dish_items
end
