class AddOnTheMenuToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :on_the_menu, :text
  end
end
