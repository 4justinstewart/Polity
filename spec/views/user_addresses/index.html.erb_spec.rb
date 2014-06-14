require 'spec_helper'

describe "user_addresses/index" do
  before(:each) do
    assign(:user_addresses, [
      stub_model(UserAddress,
        :ward => nil,
        :user => nil,
        :string => "",
        :string => "",
        :string => ""
      ),
      stub_model(UserAddress,
        :ward => nil,
        :user => nil,
        :string => "",
        :string => "",
        :string => ""
      )
    ])
  end

  it "renders a list of user_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
