class AddSelfCollectLocationToHomies < ActiveRecord::Migration
  def change
    add_column :homies, :self_collect_location, :text
  end
end
