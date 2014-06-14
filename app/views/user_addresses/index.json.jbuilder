json.array!(@user_addresses) do |user_address|
  json.extract! user_address, :id, :ward_id, :user_id, :string, :string, :string
  json.url user_address_url(user_address, format: :json)
end
