class BakerDishItem < ActiveRecord::Base
    belongs_to :baker_menu_item
	belongs_to :baker
end
