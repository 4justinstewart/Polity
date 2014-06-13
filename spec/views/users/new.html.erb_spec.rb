require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :ward => nil,
      :email => "MyString",
      :address => "MyString",
      :voter_registration => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_ward[name=?]", "user[ward]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_address[name=?]", "user[address]"
      assert_select "input#user_voter_registration[name=?]", "user[voter_registration]"
    end
  end
end
