class BookingMethod < ActiveRecord::Base
    belongs_to :ordering_method
	belongs_to :homy
	belongs_to :online_retail
	belongs_to :raw_food
	belongs_to :supplier
	belongs_to :baker
end
