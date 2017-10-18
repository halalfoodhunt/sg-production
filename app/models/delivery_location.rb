class DeliveryLocation < ActiveRecord::Base
    has_many :shipping_locations
	has_many :homies, :through => :shipping_locations
	has_many :food_deliveries, :through => :shipping_locations
	has_many :online_retails, :through => :shipping_locations
	has_many :suppliers, :through => :shipping_locations
	has_many :raw_foods, :through => :shipping_locations
	has_many :bakers, :through => :shipping_locations
end
