class RawFoodProductType < ActiveRecord::Base
    belongs_to :raw_food_product_category
	belongs_to :raw_food
end
