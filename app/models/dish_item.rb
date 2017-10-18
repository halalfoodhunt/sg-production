class DishItem < ActiveRecord::Base
    belongs_to :menu_item
	belongs_to :place
	belongs_to :homy
	belongs_to :food_delivery
	belongs_to :online_retail
end
