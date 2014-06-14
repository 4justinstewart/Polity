require 'spec_helper'

describe "community_supports/index" do
  before(:each) do
    assign(:community_supports, [
      stub_model(CommunitySupport,
        :user => nil,
        :legislation => nil,
        :support => false,
        :text => ""
      ),
      stub_model(CommunitySupport,
        :user => nil,
        :legislation => nil,
        :support => false,
        :text => ""
      )
    ])
  end

  it "renders a list of community_supports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
