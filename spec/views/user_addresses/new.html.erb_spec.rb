# require 'spec_helper'

# describe "user_addresses/new" do
#   before(:each) do
#     assign(:user_address, stub_model(UserAddress,
#       :ward => nil,
#       :address1 => "MyString",
#       :address2 => "MyString",
#       :zip => "MyString"
#     ).as_new_record)
#   end

#   it "renders new user_address form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", user_addresses_path, "post" do
#       assert_select "input#user_address_ward[name=?]", "user_address[ward]"
#       assert_select "input#user_address_address1[name=?]", "user_address[address1]"
#       assert_select "input#user_address_address2[name=?]", "user_address[address2]"
#       assert_select "input#user_address_zip[name=?]", "user_address[zip]"
#     end
#   end
# end
