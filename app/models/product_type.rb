class ProductType < ActiveRecord::Base
    belongs_to :product_category
	belongs_to :online_retail
end
