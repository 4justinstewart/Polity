require 'spec_helper'

describe "wards/edit" do
  before(:each) do
    @ward = assign(:ward, stub_model(Ward,
      :ward_number => 1,
      :address1 => "MyString",
      :address2 => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit ward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ward_path(@ward), "post" do
      assert_select "input#ward_ward_number[name=?]", "ward[ward_number]"
      assert_select "input#ward_address1[name=?]", "ward[address1]"
      assert_select "input#ward_address2[name=?]", "ward[address2]"
      assert_select "input#ward_zip[name=?]", "ward[zip]"
    end
  end
end
