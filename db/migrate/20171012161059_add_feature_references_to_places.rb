class AddFeatureReferencesToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :feature, index: true, foreign_key: true
  end
end
