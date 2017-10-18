class AddBakerIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :baker_id, :integer
  end
end
