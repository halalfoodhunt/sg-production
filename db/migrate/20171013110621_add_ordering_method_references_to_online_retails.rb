class AddOrderingMethodReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :ordering_method, index: true, foreign_key: true
  end
end
