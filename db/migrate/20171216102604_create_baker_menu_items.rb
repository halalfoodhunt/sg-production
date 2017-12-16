class CreateBakerMenuItems < ActiveRecord::Migration
  def change
    create_table :baker_menu_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
