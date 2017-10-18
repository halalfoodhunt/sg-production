class AddReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :baker_type, index: true, foreign_key: true
  end
end
