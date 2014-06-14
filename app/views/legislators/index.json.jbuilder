json.array!(@legislators) do |legislator|
  json.extract! legislator, :id, :ward_id, :integer, :date, :date, :string
  json.url legislator_url(legislator, format: :json)
end
