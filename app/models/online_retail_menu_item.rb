class OnlineRetailMenuItem < ActiveRecord::Base
    has_many :online_retail_dish_items
    has_many :online_retails, :through => :online_retail_dish_items
end
