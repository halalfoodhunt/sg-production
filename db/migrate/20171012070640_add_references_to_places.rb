class AddReferencesToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :qualifying_type, index: true, foreign_key: true
    add_reference :places, :location, index: true, foreign_key: true
    add_reference :places, :place_type, index: true, foreign_key: true
  end
end
