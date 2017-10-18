class ConfectionerServiceType < ActiveRecord::Base
    belongs_to :baker_service_type
	belongs_to :baker
end
