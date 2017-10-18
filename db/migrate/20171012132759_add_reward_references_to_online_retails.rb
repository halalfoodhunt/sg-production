class AddRewardReferencesToOnlineRetails < ActiveRecord::Migration
  def change
    add_reference :online_retails, :reward, index: true, foreign_key: true
    add_reference :online_retails, :qualifying_type, index: true, foreign_key: true
  end
end
