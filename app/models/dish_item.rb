class DishItem < ActiveRecord::Base
    belongs_to :menu_item
	belongs_to :place
	belongs_to :online_retail
	belongs_to :baker
	belongs_to :food_delivery
end
