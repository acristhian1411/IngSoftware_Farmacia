json.array!(@user) do |user|
  json.extract! user, :id, :email, :created_at, :admin, :name
  json.url user_url(user, format: :json)
end
