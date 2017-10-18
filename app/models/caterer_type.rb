class CatererType < ActiveRecord::Base
    has_many :caterer_categories
	has_many :caterers, :through => :caterer_categories
end
