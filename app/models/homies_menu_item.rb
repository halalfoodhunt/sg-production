class HomiesMenuItem < ActiveRecord::Base
    has_many :homies_dish_items
	has_many :homies, :through => :homies_dish_items
end
