class Reward < ActiveRecord::Base
    belongs_to :place
    belongs_to :homy
    belongs_to :online_retail
    belongs_to :food_delivery
    belongs_to :caterer
    belongs_to :supplier
    belongs_to :baker
    belongs_to :raw_food
    belongs_to :discount
end
