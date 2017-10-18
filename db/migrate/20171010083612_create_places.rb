class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :brand_name
      t.string :general_email
      t.string :general_outlet_contact_number
      t.string :operating_address
      t.string :website
      t.string :facebook_page
      t.string :instagram_handle
      t.string :link_to_online_ordering_page
      t.string :link_to_online_reservation_page
      t.text :question_1
      t.text :question_2
      t.references :merchant, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.boolean :draft, default: true
      t.boolean :verified, default: false
      t.datetime :halal_expiry
      t.datetime :expiry_date

      t.timestamps null: false
    end
  end
end
