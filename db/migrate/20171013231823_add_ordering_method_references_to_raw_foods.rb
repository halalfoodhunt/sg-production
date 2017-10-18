class AddOrderingMethodReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :ordering_method, index: true, foreign_key: true
  end
end
