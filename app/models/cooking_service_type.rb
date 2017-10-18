class CookingServiceType < ActiveRecord::Base
    belongs_to :caterer_service_type
	belongs_to :caterer
end
