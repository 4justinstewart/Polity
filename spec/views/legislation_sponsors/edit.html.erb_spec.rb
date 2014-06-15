# require 'spec_helper'

# describe "legislation_sponsors/edit" do
#   before(:each) do
#     @legislation_sponsor = assign(:legislation_sponsor, stub_model(LegislationSponsor,
#       :sponsor_id => 1,
#       :legislation => nil
#     ))
#   end

#   it "renders the edit legislation_sponsor form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", legislation_sponsor_path(@legislation_sponsor), "post" do
#       assert_select "input#legislation_sponsor_sponsor_id[name=?]", "legislation_sponsor[sponsor_id]"
#       assert_select "input#legislation_sponsor_legislation[name=?]", "legislation_sponsor[legislation]"
#     end
#   end
# end
