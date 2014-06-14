require 'spec_helper'

describe "LegislationSponsors" do
  describe "GET /legislation_sponsors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get legislation_sponsors_path
      response.status.should be(200)
    end
  end
end
