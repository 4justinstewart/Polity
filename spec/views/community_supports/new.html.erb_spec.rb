require 'spec_helper'

describe "community_supports/new" do
  before(:each) do
    assign(:community_support, stub_model(CommunitySupport,
      :user => nil,
      :legislation => nil,
      :support => false,
      :text => ""
    ).as_new_record)
  end

  it "renders new community_support form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", community_supports_path, "post" do
      assert_select "input#community_support_user[name=?]", "community_support[user]"
      assert_select "input#community_support_legislation[name=?]", "community_support[legislation]"
      assert_select "input#community_support_support[name=?]", "community_support[support]"
      assert_select "input#community_support_text[name=?]", "community_support[text]"
    end
  end
end
