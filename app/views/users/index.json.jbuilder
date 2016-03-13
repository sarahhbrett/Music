json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :dob, :sex, :regular, :photo, :password
  json.url user_url(user, format: :json)
end
