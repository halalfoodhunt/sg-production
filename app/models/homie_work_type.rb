class HomieWorkType < ActiveRecord::Base
    belongs_to :homie_service_type
	belongs_to :homy
end
