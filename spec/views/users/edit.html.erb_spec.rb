require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :ward => nil,
      :email => "MyString",
      :address => "MyString",
      :voter_registration => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_ward[name=?]", "user[ward]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_address[name=?]", "user[address]"
      assert_select "input#user_voter_registration[name=?]", "user[voter_registration]"
    end
  end
end
