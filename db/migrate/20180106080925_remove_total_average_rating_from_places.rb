class RemoveTotalAverageRatingFromPlaces < ActiveRecord::Migration
  def change
    remove_column :places, :total_average_rating, :integer
  end
end
