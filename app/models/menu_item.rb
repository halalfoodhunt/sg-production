class MenuItem < ActiveRecord::Base
    has_many :dish_items
	has_many :places, :through => :dish_items
	has_many :homies, :through => :dish_items
	has_many :food_deliveries, :through => :dish_items
	has_many :online_grocers, :through => :dish_items
end
