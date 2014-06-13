require 'spec_helper'

describe "aldermen/index" do
  before(:each) do
    assign(:aldermen, [
      stub_model(Alderman,
        :ward => nil,
        :party_affiliation => "Party Affiliation",
        :user => nil
      ),
      stub_model(Alderman,
        :ward => nil,
        :party_affiliation => "Party Affiliation",
        :user => nil
      )
    ])
  end

  it "renders a list of aldermen" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Party Affiliation".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
