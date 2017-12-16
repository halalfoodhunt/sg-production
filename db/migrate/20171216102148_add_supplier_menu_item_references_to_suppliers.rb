class AddSupplierMenuItemReferencesToSuppliers < ActiveRecord::Migration
  def change
    add_reference :suppliers, :supplier_menu_item, index: true, foreign_key: true
  end
end
