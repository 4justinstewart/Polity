require 'spec_helper'

describe "legislation_sponsors/new" do
  before(:each) do
    assign(:legislation_sponsor, stub_model(LegislationSponsor,
      :legislator_id => 1,
      :legislation_id => 1
    ).as_new_record)
  end

  it "renders new legislation_sponsor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislation_sponsors_path, "post" do
      assert_select "input#legislation_sponsor_legislator_id[name=?]", "legislation_sponsor[legislator_id]"
      assert_select "input#legislation_sponsor_legislation_id[name=?]", "legislation_sponsor[legislation_id]"
    end
  end
end
