class DishItem < ActiveRecord::Base
    belongs_to :menu_item
	belongs_to :place
	belongs_to :homy
	belongs_to :food_delivery
	belongs_to :online_retail
	belongs_to :baker
	belongs_to :supplier
	belongs_to :raw_food
	belongs_to :caterer
end
