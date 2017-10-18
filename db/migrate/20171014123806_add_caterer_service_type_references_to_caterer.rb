class AddCatererServiceTypeReferencesToCaterer < ActiveRecord::Migration
  def change
    add_reference :caterers, :caterer_service_type, index: true, foreign_key: true
  end
end
