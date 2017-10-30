class MenuItem < ActiveRecord::Base
    has_many :dish_items
	has_many :places, :through => :dish_items
	has_many :bakers, :through => :dish_items
	has_many :online_retails, :through => :dish_items
	has_many :food_deliveries, :through => :dish_items
end
