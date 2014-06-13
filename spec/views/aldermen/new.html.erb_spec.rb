require 'spec_helper'

describe "aldermen/new" do
  before(:each) do
    assign(:alderman, stub_model(Alderman,
      :ward => nil,
      :party_affiliation => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new alderman form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aldermen_path, "post" do
      assert_select "input#alderman_ward[name=?]", "alderman[ward]"
      assert_select "input#alderman_party_affiliation[name=?]", "alderman[party_affiliation]"
      assert_select "input#alderman_user[name=?]", "alderman[user]"
    end
  end
end
