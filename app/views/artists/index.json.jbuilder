json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :bio, :image
  json.url artist_url(artist, format: :json)
end
