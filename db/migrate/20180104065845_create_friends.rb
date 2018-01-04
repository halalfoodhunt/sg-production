class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :uid
      t.string :email
      t.string :status

      t.timestamps null: false
    end
  end
end
