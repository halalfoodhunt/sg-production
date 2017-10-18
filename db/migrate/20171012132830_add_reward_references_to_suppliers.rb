class AddRewardReferencesToSuppliers < ActiveRecord::Migration
  def change
    add_reference :suppliers, :reward, index: true, foreign_key: true
    add_reference :suppliers, :qualifying_type, index: true, foreign_key: true
  end
end
