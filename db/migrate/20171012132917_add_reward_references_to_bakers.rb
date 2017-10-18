class AddRewardReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :reward, index: true, foreign_key: true
    add_reference :bakers, :qualifying_type, index: true, foreign_key: true
  end
end
