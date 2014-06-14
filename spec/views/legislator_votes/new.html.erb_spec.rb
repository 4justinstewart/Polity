require 'spec_helper'

describe "legislator_votes/new" do
  before(:each) do
    assign(:legislator_vote, stub_model(LegislatorVote,
      :legislator_id => 1,
      :legislation_id => 1,
      :vote => "MyString"
    ).as_new_record)
  end

  it "renders new legislator_vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislator_votes_path, "post" do
      assert_select "input#legislator_vote_legislator_id[name=?]", "legislator_vote[legislator_id]"
      assert_select "input#legislator_vote_legislation_id[name=?]", "legislator_vote[legislation_id]"
      assert_select "input#legislator_vote_vote[name=?]", "legislator_vote[vote]"
    end
  end
end
