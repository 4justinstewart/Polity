require 'spec_helper'

describe "legislators/show" do
  before(:each) do
    @legislator = assign(:legislator, stub_model(Legislator,
      :ward => nil,
      :integer => "",
      :date => "",
      :date => "",
      :string => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
