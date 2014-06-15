# require 'spec_helper'

# describe "legislator_votes/index" do
#   before(:each) do
#     assign(:legislator_votes, [
#       stub_model(LegislatorVote,
#         :legislation => nil,
#         :legislator => nil,
#         :vote => "Vote"
#       ),
#       stub_model(LegislatorVote,
#         :legislation => nil,
#         :legislator => nil,
#         :vote => "Vote"
#       )
#     ])
#   end

#   it "renders a list of legislator_votes" do
#     render
#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#     assert_select "tr>td", :text => "Vote".to_s, :count => 2
#   end
# end
