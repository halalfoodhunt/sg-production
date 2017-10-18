class AddOnlineRetailIdToDishItems < ActiveRecord::Migration
  def change
    add_column :dish_items, :online_retail_id, :integer
  end
end
