class BakerProductCategory < ActiveRecord::Base
    has_many :baker_product_types
	has_many :bakers, :through => :baker_product_types
end
