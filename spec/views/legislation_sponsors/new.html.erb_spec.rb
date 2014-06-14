# require 'spec_helper'

# describe "legislation_sponsors/new" do
#   before(:each) do
#     assign(:legislation_sponsor, stub_model(LegislationSponsor,
#       :sponsor_id => 1,
#       :legislation => nil
#     ).as_new_record)
#   end

#   it "renders new legislation_sponsor form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", legislation_sponsors_path, "post" do
#       assert_select "input#legislation_sponsor_sponsor_id[name=?]", "legislation_sponsor[sponsor_id]"
#       assert_select "input#legislation_sponsor_legislation[name=?]", "legislation_sponsor[legislation]"
#     end
#   end
# end
