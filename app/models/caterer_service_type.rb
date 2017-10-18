class CatererServiceType < ActiveRecord::Base
    has_many :cooking_service_types
	has_many :caterers, :through => :cooking_service_types
end
