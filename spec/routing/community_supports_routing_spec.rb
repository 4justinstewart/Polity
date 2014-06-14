require "spec_helper"

describe CommunitySupportsController do
  describe "routing" do

    it "routes to #index" do
      get("/community_supports").should route_to("community_supports#index")
    end

    it "routes to #new" do
      get("/community_supports/new").should route_to("community_supports#new")
    end

    it "routes to #show" do
      get("/community_supports/1").should route_to("community_supports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_supports/1/edit").should route_to("community_supports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_supports").should route_to("community_supports#create")
    end

    it "routes to #update" do
      put("/community_supports/1").should route_to("community_supports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_supports/1").should route_to("community_supports#destroy", :id => "1")
    end

  end
end
