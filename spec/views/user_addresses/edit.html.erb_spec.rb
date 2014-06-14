require 'spec_helper'

describe "user_addresses/edit" do
  before(:each) do
    @user_address = assign(:user_address, stub_model(UserAddress,
      :ward => nil,
      :user => nil,
      :string => "",
      :string => "",
      :string => ""
    ))
  end

  it "renders the edit user_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_address_path(@user_address), "post" do
      assert_select "input#user_address_ward[name=?]", "user_address[ward]"
      assert_select "input#user_address_user[name=?]", "user_address[user]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
    end
  end
end
