require "spec_helper"

describe AldermenController do
  describe "routing" do

    it "routes to #index" do
      get("/aldermen").should route_to("aldermen#index")
    end

    it "routes to #new" do
      get("/aldermen/new").should route_to("aldermen#new")
    end

    it "routes to #show" do
      get("/aldermen/1").should route_to("aldermen#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aldermen/1/edit").should route_to("aldermen#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aldermen").should route_to("aldermen#create")
    end

    it "routes to #update" do
      put("/aldermen/1").should route_to("aldermen#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aldermen/1").should route_to("aldermen#destroy", :id => "1")
    end

  end
end
