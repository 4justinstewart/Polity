require 'spec_helper'

describe "legislator_votes/show" do
  before(:each) do
    @legislator_vote = assign(:legislator_vote, stub_model(LegislatorVote,
      :legislator_id => 1,
      :legislation_id => 2,
      :vote => "Vote"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Vote/)
  end
end
