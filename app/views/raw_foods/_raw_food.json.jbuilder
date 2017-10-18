json.extract! raw_food, :id, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :self_collection_address, :question_1, :expiry_date, :halal_expiry, :draft, :verified, :merchant_id, :listing_id, :created_at, :updated_at
json.url raw_food_url(raw_food, format: :json)
