json.extract! food_delivery, :id, :brand_name, :delivery_hotline, :general_email, :link_to_online_ordering_page, :facebook_page, :instagram_handle, :question_1, :draft, :verified, :merchant_id, :listing_id, :created_at, :updated_at
json.url food_delivery_url(food_delivery, format: :json)
