class CatererDishItem < ActiveRecord::Base
    belongs_to :caterer_menu_item
	belongs_to :caterer
end
