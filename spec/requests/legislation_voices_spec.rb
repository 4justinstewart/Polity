require 'spec_helper'

describe "LegislationVoices" do
  describe "GET /legislation_voices" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get legislation_voices_path
      response.status.should be(200)
    end
  end
end
