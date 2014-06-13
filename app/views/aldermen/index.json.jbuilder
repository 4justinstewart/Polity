json.array!(@aldermen) do |alderman|
  json.extract! alderman, :id, :ward_id, :start_date, :end_date, :party_affiliation, :user_id
  json.url alderman_url(alderman, format: :json)
end
