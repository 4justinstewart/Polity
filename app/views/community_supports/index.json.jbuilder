json.array!(@community_supports) do |community_support|
  json.extract! community_support, :id, :user_id, :legislation_id, :support, :text
  json.url community_support_url(community_support, format: :json)
end
