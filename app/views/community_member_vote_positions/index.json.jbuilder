json.array!(@community_member_vote_positions) do |community_member_vote_position|
  json.extract! community_member_vote_position, :id, :agree, :feedback
  json.url community_member_vote_position_url(community_member_vote_position, format: :json)
end
