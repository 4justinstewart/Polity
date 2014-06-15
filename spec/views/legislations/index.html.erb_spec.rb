require 'spec_helper'

describe "legislations/index" do
  before(:each) do
    assign(:legislations, [
      stub_model(Legislation,
        :city_identifier => "City Identifier",
        :status => "Status",
        :type => "Type"
      ),
      stub_model(Legislation,
        :city_identifier => "City Identifier",
        :status => "Status",
        :type => "Type"
      )
    ])
  end

  it "renders a list of legislations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
