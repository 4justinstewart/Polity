require 'spec_helper'

describe "user_addresses/show" do
  before(:each) do
    @user_address = assign(:user_address, stub_model(UserAddress,
      :ward => nil,
      :user => nil,
      :string => "",
      :string => "",
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
