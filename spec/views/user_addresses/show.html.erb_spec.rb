require 'spec_helper'

describe "user_addresses/show" do
  before(:each) do
    @user_address = assign(:user_address, stub_model(UserAddress,
      :ward => nil,
      :address1 => "Address1",
      :address2 => "Address2",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/Zip/)
  end
end
