json.array!(@wards) do |ward|
  json.extract! ward, :id, :ward_number, :address1, :address2, :zip
  json.url ward_url(ward, format: :json)
end
