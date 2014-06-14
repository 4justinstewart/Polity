require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "First Name",
      :last_name => "Last Name",
      :ward => nil,
      :email => "Email",
      :address => "Address",
      :voter_registration => "Voter Registration"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(//)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/Voter Registration/)
  end
end
