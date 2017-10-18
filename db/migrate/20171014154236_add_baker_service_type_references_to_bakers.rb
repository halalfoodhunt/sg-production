class AddBakerServiceTypeReferencesToBakers < ActiveRecord::Migration
  def change
    add_reference :bakers, :baker_service_type, index: true, foreign_key: true
  end
end
