class AddMusollahNearbyToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :musollah_nearby, :text
  end
end
