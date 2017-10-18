class BakerProductType < ActiveRecord::Base
    belongs_to :baker_product_category
	belongs_to :baker
end
