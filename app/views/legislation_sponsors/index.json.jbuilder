json.array!(@legislation_sponsors) do |legislation_sponsor|
  json.extract! legislation_sponsor, :id, :sponsor_id, :legislation_id
  json.url legislation_sponsor_url(legislation_sponsor, format: :json)
end
