require 'spec_helper'

describe "legislations/show" do
  before(:each) do
    @legislation = assign(:legislation, stub_model(Legislation,
      :city_identifier => "City Identifier",
      :status => "Status",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City Identifier/)
    rendered.should match(/Status/)
    rendered.should match(/Type/)
  end
end
