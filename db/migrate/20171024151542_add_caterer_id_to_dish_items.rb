class AddCatererIdToDishItems < ActiveRecord::Migration
  def change
    add_column :dish_items, :caterer_id, :integer
  end
end
