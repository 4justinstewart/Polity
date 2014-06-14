# require 'spec_helper'

# describe "users/edit" do
#   before(:each) do
#     @user = assign(:user, stub_model(User,
#       :first_name => "MyString",
#       :last_name => "MyString",
#       :user_address => nil
#     ))
#   end

#   it "renders the edit user form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", user_path(@user), "post" do
#       assert_select "input#user_first_name[name=?]", "user[first_name]"
#       assert_select "input#user_last_name[name=?]", "user[last_name]"
#       assert_select "input#user_user_address[name=?]", "user[user_address]"
#     end
#   end
# end
