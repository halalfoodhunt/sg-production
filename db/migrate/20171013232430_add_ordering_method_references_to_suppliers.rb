class AddOrderingMethodReferencesToSuppliers < ActiveRecord::Migration
  def change
    add_reference :suppliers, :ordering_method, index: true, foreign_key: true
  end
end
