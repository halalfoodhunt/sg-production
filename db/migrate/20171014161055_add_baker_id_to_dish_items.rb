class AddBakerIdToDishItems < ActiveRecord::Migration
  def change
    add_column :dish_items, :baker_id, :integer
  end
end
