class CreateBakers < ActiveRecord::Migration
  def change
    create_table :bakers do |t|
      t.string :brand_name
      t.string :general_contact_number
      t.string :general_email
      t.string :website_online_ordering_page
      t.string :facebook_page
      t.string :instagram_handle
      t.string :self_collection_address
      t.text :question_1
      t.datetime :expiry_date
      t.datetime :halal_expiry
      t.boolean :draft, default: true
      t.boolean :verified, default: false
      t.references :merchant, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
