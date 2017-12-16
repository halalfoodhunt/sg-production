class SupplierMenuItem < ActiveRecord::Base
    has_many :supplier_dish_items
    has_many :suppliers, :through => :supplier_dish_items
end
