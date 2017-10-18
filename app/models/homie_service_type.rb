class HomieServiceType < ActiveRecord::Base
    has_many :homie_work_types
	has_many :homies, :through => :homie_work_types
end
