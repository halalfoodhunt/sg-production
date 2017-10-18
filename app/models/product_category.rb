class ProductCategory < ActiveRecord::Base
    has_many :product_types
    has_many :online_retails, :through => :product_types
end
