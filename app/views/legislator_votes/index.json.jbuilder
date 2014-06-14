json.array!(@legislator_votes) do |legislator_vote|
  json.extract! legislator_vote, :id, :legislation_id, :legislator_id, :vote_date, :vote
  json.url legislator_vote_url(legislator_vote, format: :json)
end
