json.array!(@wards) do |ward|
  json.extract! ward, :id, :ward_number, :term_start, :term_end, :legislator_id
  json.url ward_url(ward, format: :json)
end
