# require 'spec_helper'

# describe "legislator_votes/edit" do
#   before(:each) do
#     @legislator_vote = assign(:legislator_vote, stub_model(LegislatorVote,
#       :legislation => nil,
#       :legislator => nil,
#       :vote => "MyString"
#     ))
#   end

#   it "renders the edit legislator_vote form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", legislator_vote_path(@legislator_vote), "post" do
#       assert_select "input#legislator_vote_legislation[name=?]", "legislator_vote[legislation]"
#       assert_select "input#legislator_vote_legislator[name=?]", "legislator_vote[legislator]"
#       assert_select "input#legislator_vote_vote[name=?]", "legislator_vote[vote]"
#     end
#   end
# end
