class AddOnlineRetailIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :online_retail_id, :integer
  end
end
