class BakerMenuItem < ActiveRecord::Base
    has_many :baker_dish_items
    has_many :bakers, :through => :baker_dish_items
end
