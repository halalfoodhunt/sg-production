class CatererMenuItem < ActiveRecord::Base
    has_many :caterer_dish_items
    has_many :caterers, :through => :caterer_dish_items
end
