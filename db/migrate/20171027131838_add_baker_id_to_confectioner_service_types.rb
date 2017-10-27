class AddBakerIdToConfectionerServiceTypes < ActiveRecord::Migration
  def change
    add_column :confectioner_service_types, :baker_id, :integer
  end
end
