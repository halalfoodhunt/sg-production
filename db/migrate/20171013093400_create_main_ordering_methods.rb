class CreateMainOrderingMethods < ActiveRecord::Migration
  def change
    create_table :main_ordering_methods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
