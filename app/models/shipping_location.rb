class ShippingLocation < ActiveRecord::Base
    belongs_to :delivery_location
	belongs_to :homy
	belongs_to :food_delivery
	belongs_to :online_retail
	belongs_to :supplier
	belongs_to :raw_food
	belongs_to :baker
	
end
