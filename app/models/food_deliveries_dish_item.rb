class FoodDeliveriesDishItem < ActiveRecord::Base
    belongs_to :food_deliveries_menu_item
	belongs_to :food_delivery
end
