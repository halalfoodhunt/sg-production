class AddCuisineTypeReferencesToCaterers < ActiveRecord::Migration
  def change
    add_reference :caterers, :cuisine_type, index: true, foreign_key: true
  end
end
