class AddOpeningHourIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :opening_hour_id, :integer
  end
end
