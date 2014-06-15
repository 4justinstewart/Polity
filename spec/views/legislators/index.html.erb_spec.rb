require 'spec_helper'

describe "legislators/index" do
  before(:each) do
    assign(:legislators, [
      stub_model(Legislator,
        :alderman_id => 1,
        :represented_ward_id => 2,
        :party_affiliation => "Party Affiliation"
      ),
      stub_model(Legislator,
        :alderman_id => 1,
        :represented_ward_id => 2,
        :party_affiliation => "Party Affiliation"
      )
    ])
  end

  it "renders a list of legislators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Party Affiliation".to_s, :count => 2
  end
end
