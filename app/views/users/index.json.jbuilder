json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :ward_id, :email, :address, :voter_registration
  json.url user_url(user, format: :json)
end
