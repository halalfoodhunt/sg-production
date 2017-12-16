class SupplierDishItem < ActiveRecord::Base
    belongs_to :supplier_menu_item
	belongs_to :supplier
end
