require 'spec_helper'

describe "community_member_vote_positions/index" do
  before(:each) do
    assign(:community_member_vote_positions, [
      stub_model(CommunityMemberVotePosition,
        :agree => false,
        :feedback => "MyText"
      ),
      stub_model(CommunityMemberVotePosition,
        :agree => false,
        :feedback => "MyText"
      )
    ])
  end

  it "renders a list of community_member_vote_positions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
