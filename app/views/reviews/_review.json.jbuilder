json.extract! review, :id, :place_id, :friend_id, :content, :created_at, :updated_at
json.url review_url(review, format: :json)
