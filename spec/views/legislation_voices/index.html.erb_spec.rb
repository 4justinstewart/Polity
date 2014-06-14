# require 'spec_helper'

# describe "legislation_voices/index" do
#   before(:each) do
#     assign(:legislation_voices, [
#       stub_model(LegislationVoice,
#         :user => nil,
#         :legislation => nil,
#         :support => false,
#         :feedback => "MyText"
#       ),
#       stub_model(LegislationVoice,
#         :user => nil,
#         :legislation => nil,
#         :support => false,
#         :feedback => "MyText"
#       )
#     ])
#   end

#   it "renders a list of legislation_voices" do
#     render
#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#     assert_select "tr>td", :text => false.to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#   end
# end
