class AddHomyIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :homy_id, :integer
  end
end
