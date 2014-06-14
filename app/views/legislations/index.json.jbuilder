json.array!(@legislations) do |legislation|
  json.extract! legislation, :id, :status, :type, :opened_date, :closed_date
  json.url legislation_url(legislation, format: :json)
end
