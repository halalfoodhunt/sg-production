class OnlineRetailDishItem < ActiveRecord::Base
    belongs_to :online_retail_menu_item
	belongs_to :online_retail
end
