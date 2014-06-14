require 'spec_helper'

describe "user_addresses/new" do
  before(:each) do
    assign(:user_address, stub_model(UserAddress,
      :ward => nil,
      :user => nil,
      :string => "",
      :string => "",
      :string => ""
    ).as_new_record)
  end

  it "renders new user_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_addresses_path, "post" do
      assert_select "input#user_address_ward[name=?]", "user_address[ward]"
      assert_select "input#user_address_user[name=?]", "user_address[user]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
      assert_select "input#user_address_string[name=?]", "user_address[string]"
    end
  end
end
