require 'spec_helper'

describe "wards/index" do
  before(:each) do
    assign(:wards, [
      stub_model(Ward,
        :ward_number => 1,
        :legislator => nil
      ),
      stub_model(Ward,
        :ward_number => 1,
        :legislator => nil
      )
    ])
  end

  it "renders a list of wards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
