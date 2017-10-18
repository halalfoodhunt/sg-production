class AddRewardReferencesToRawFoods < ActiveRecord::Migration
  def change
    add_reference :raw_foods, :reward, index: true, foreign_key: true
    add_reference :raw_foods, :qualifying_type, index: true, foreign_key: true
  end
end
