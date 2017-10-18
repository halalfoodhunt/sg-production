class AddOrderingMethodReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :ordering_method, index: true, foreign_key: true
  end
end
