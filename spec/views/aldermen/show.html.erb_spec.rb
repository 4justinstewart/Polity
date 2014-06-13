require 'spec_helper'

describe "aldermen/show" do
  before(:each) do
    @alderman = assign(:alderman, stub_model(Alderman,
      :ward => nil,
      :party_affiliation => "Party Affiliation",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Party Affiliation/)
    rendered.should match(//)
  end
end
