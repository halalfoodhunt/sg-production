class AddSlugToOnlineRetails < ActiveRecord::Migration
  def change
    add_column :online_retails, :slug, :string
    add_index :online_retails, :slug, unique: true
  end
end
