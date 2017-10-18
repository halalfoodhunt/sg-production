class AddPlaceIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :place_id, :integer
  end
end
