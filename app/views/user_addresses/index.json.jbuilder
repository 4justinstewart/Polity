json.array!(@user_addresses) do |user_address|
  json.extract! user_address, :id, :ward_id, :address1, :address2, :zip
  json.url user_address_url(user_address, format: :json)
end
