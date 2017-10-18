class OnlineRetailWorkType < ActiveRecord::Base
    belongs_to :online_retail_service_type
	belongs_to :online_retail
	belongs_to :raw_food
	belongs_to :supplier
end
