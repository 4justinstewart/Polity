json.array!(@legislators) do |legislator|
  json.extract! legislator, :id, :alderman_id, :represented_ward_id, :term_start_date, :term_end_date, :party_affiliation
  json.url legislator_url(legislator, format: :json)
end
