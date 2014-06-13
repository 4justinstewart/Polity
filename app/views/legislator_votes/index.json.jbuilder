json.array!(@legislator_votes) do |legislator_vote|
  json.extract! legislator_vote, :id, :date_of_vote, :legislator_id, :legislation_id, :vote
  json.url legislator_vote_url(legislator_vote, format: :json)
end
