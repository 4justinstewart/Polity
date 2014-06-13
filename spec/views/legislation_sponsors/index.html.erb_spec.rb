require 'spec_helper'

describe "legislation_sponsors/index" do
  before(:each) do
    assign(:legislation_sponsors, [
      stub_model(LegislationSponsor,
        :legislator_id => 1,
        :legislation_id => 2
      ),
      stub_model(LegislationSponsor,
        :legislator_id => 1,
        :legislation_id => 2
      )
    ])
  end

  it "renders a list of legislation_sponsors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
