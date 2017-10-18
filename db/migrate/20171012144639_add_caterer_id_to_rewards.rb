class AddCatererIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :caterer_id, :integer
  end
end
