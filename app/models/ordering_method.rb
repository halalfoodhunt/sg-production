class OrderingMethod < ActiveRecord::Base
    has_many :booking_methods
	has_many :homies, :through => :booking_methods
	has_many :online_retails, :through => :booking_methods
	has_many :suppliers, :through => :booking_methods
	has_many :raw_foods, :through => :booking_methods
	has_many :bakers, :through => :booking_methods
end
