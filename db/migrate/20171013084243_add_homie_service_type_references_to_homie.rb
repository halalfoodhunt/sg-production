class AddHomieServiceTypeReferencesToHomie < ActiveRecord::Migration
  def change
    add_reference :homies, :homie_service_type, index: true, foreign_key: true
  end
end
