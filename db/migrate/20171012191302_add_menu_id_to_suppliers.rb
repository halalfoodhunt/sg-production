class AddMenuIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :menu_id, :integer
  end
end
