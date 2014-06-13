require 'spec_helper'

describe "community_member_vote_positions/show" do
  before(:each) do
    @community_member_vote_position = assign(:community_member_vote_position, stub_model(CommunityMemberVotePosition,
      :agree => false,
      :feedback => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
