class CookingType < ActiveRecord::Base
    belongs_to :cuisine_type
	belongs_to :caterer
end
