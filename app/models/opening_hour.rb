class OpeningHour < ActiveRecord::Base
  belongs_to :place
  belongs_to :food_delivery
  belongs_to :caterer
  belongs_to :supplier
  belongs_to :baker
  belongs_to :raw_food
  belongs_to :day
end
