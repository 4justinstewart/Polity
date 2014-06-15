require 'spec_helper'

describe "legislators/show" do
  before(:each) do
    @legislator = assign(:legislator, stub_model(Legislator,
      :alderman_id => 1,
      :represented_ward_id => 2,
      :party_affiliation => "Party Affiliation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Party Affiliation/)
  end
end
