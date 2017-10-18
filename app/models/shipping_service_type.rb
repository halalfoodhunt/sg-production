class ShippingServiceType < ActiveRecord::Base
    belongs_to :delivery_service_type
	belongs_to :food_delivery
end
