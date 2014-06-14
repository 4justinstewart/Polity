require 'spec_helper'

describe "wards/show" do
  before(:each) do
    @ward = assign(:ward, stub_model(Ward,
      :ward_number => 1,
      :legislator => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
