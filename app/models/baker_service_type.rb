class BakerServiceType < ActiveRecord::Base
    has_many :confectioner_service_types
	has_many :bakers, :through => :confectioner_service_types
end
