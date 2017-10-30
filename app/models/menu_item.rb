class MenuItem < ActiveRecord::Base
    has_many :dish_items
	has_many :places, :through => :dish_items
	has_many :bakers, :through => :dish_items
	has_many :online_grocers, :through => :dish_items
end
