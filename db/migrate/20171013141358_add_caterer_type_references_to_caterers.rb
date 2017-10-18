class AddCatererTypeReferencesToCaterers < ActiveRecord::Migration
  def change
    add_reference :caterers, :caterer_type, index: true, foreign_key: true
  end
end
