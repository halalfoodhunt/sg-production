class RawFoodDishItem < ActiveRecord::Base
    belongs_to :raw_food_menu_item
	belongs_to :raw_food
end
