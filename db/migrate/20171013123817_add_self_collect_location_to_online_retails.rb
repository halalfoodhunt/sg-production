class AddSelfCollectLocationToOnlineRetails < ActiveRecord::Migration
  def change
    add_column :online_retails, :self_collect_location, :text
  end
end
