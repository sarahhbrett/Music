json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :dob, :gender, :password_digest
  json.url user_url(user, format: :json)
end
