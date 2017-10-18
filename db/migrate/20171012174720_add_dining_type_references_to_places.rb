class AddDiningTypeReferencesToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :dining_type, index: true, foreign_key: true
  end
end
