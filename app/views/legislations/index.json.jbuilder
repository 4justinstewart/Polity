json.array!(@legislations) do |legislation|
  json.extract! legislation, :id, :city_identifier, :status, :kind, :opened_date, :closed_date
  json.url legislation_url(legislation, format: :json)
end
