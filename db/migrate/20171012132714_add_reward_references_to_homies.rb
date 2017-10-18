class AddRewardReferencesToHomies < ActiveRecord::Migration
  def change
    add_reference :homies, :reward, index: true, foreign_key: true
    add_reference :homies, :qualifying_type, index: true, foreign_key: true
  end
end
