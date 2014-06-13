require 'spec_helper'

describe "legislation_sponsors/show" do
  before(:each) do
    @legislation_sponsor = assign(:legislation_sponsor, stub_model(LegislationSponsor,
      :legislator_id => 1,
      :legislation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
