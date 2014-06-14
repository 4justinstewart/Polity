# require 'spec_helper'

# describe "user_addresses/edit" do
#   before(:each) do
#     @user_address = assign(:user_address, stub_model(UserAddress,
#       :ward => nil,
#       :address1 => "MyString",
#       :address2 => "MyString",
#       :zip => "MyString"
#     ))
#   end

#   it "renders the edit user_address form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", user_address_path(@user_address), "post" do
#       assert_select "input#user_address_ward[name=?]", "user_address[ward]"
#       assert_select "input#user_address_address1[name=?]", "user_address[address1]"
#       assert_select "input#user_address_address2[name=?]", "user_address[address2]"
#       assert_select "input#user_address_zip[name=?]", "user_address[zip]"
#     end
#   end
# end
