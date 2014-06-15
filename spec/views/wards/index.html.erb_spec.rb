require 'spec_helper'

describe "wards/index" do
  before(:each) do
    assign(:wards, [
      stub_model(Ward,
        :ward_number => 1,
        :address1 => "Address1",
        :address2 => "Address2",
        :zip => "Zip"
      ),
      stub_model(Ward,
        :ward_number => 1,
        :address1 => "Address1",
        :address2 => "Address2",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of wards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
