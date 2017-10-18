class AddOrderingMethodReferencesToHomies < ActiveRecord::Migration
  def change
    add_reference :homies, :ordering_method, index: true, foreign_key: true
  end
end
