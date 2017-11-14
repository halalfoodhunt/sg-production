class AddFrcCodeToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :friends_code, :string
  end
end
