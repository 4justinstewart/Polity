require 'spec_helper'

describe "wards/show" do
  before(:each) do
    @ward = assign(:ward, stub_model(Ward,
      :ward_number => 1,
      :address1 => "Address1",
      :address2 => "Address2",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/Zip/)
  end
end
