class AddRewardReferenceToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :reward, index: true, foreign_key: true
  end
end
