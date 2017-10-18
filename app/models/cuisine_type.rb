class CuisineType < ActiveRecord::Base
    has_many :cooking_types
	has_many :caterers, :through => :cooking_types
end
