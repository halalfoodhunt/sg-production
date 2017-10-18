class AddRewardReferencesToCaterers < ActiveRecord::Migration
  def change
    add_reference :caterers, :reward, index: true, foreign_key: true
    add_reference :caterers, :qualifying_type, index: true, foreign_key: true
  end
end
