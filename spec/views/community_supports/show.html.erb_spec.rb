require 'spec_helper'

describe "community_supports/show" do
  before(:each) do
    @community_support = assign(:community_support, stub_model(CommunitySupport,
      :user => nil,
      :legislation => nil,
      :support => false,
      :text => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
