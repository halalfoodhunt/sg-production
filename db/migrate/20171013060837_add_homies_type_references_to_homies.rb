class AddHomiesTypeReferencesToHomies < ActiveRecord::Migration
  def change
    add_reference :homies, :homies_type, index: true, foreign_key: true
  end
end
