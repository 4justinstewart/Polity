require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :ward => nil,
        :email => "Email",
        :address => "Address",
        :voter_registration => "Voter Registration"
      ),
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :ward => nil,
        :email => "Email",
        :address => "Address",
        :voter_registration => "Voter Registration"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Voter Registration".to_s, :count => 2
  end
end
