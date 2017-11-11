class HomiesDishItem < ActiveRecord::Base
    belongs_to :homies_menu_item
	belongs_to :homy
end
