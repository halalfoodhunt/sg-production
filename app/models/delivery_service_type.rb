class DeliveryServiceType < ActiveRecord::Base
    has_many :shipping_service_types
	has_many :food_deliveries, :through => :shipping_service_types
end
