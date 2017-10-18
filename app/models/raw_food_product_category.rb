class RawFoodProductCategory < ActiveRecord::Base
    has_many :raw_food_product_types
	has_many :raw_foods, :through => :raw_food_product_types
end
