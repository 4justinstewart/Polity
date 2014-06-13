require 'spec_helper'

describe "CommunityMemberVotePositions" do
  describe "GET /community_member_vote_positions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get community_member_vote_positions_path
      response.status.should be(200)
    end
  end
end
