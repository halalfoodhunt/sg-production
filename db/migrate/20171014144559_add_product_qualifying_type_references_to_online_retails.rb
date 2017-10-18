class AddProductQualifyingTypeReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :product_qualifying_type, index: true, foreign_key: true
  end
end
