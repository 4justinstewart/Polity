require "spec_helper"

describe CommunityMemberVotePositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/community_member_vote_positions").should route_to("community_member_vote_positions#index")
    end

    it "routes to #new" do
      get("/community_member_vote_positions/new").should route_to("community_member_vote_positions#new")
    end

    it "routes to #show" do
      get("/community_member_vote_positions/1").should route_to("community_member_vote_positions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_member_vote_positions/1/edit").should route_to("community_member_vote_positions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_member_vote_positions").should route_to("community_member_vote_positions#create")
    end

    it "routes to #update" do
      put("/community_member_vote_positions/1").should route_to("community_member_vote_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_member_vote_positions/1").should route_to("community_member_vote_positions#destroy", :id => "1")
    end

  end
end
