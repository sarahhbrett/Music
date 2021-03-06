json.array!(@reviews) do |review|
  json.extract! review, :id, :content, :user_id, :album_id, :stars
  json.url review_url(review, format: :json)
end
