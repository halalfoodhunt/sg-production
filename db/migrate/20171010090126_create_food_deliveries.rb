class CreateFoodDeliveries < ActiveRecord::Migration
  def change
    create_table :food_deliveries do |t|
      t.string :brand_name
      t.string :delivery_hotline
      t.string :general_email
      t.string :link_to_online_ordering_page
      t.string :facebook_page
      t.string :instagram_handle
      t.text :question_1
      t.boolean :draft, default: true
      t.boolean :verified, default: false
      t.datetime :halal_expiry
      t.datetime :expiry_date
      t.references :merchant, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
