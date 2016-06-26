json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :name, :picture, :address
  json.url user_url(user, format: :json)
end
