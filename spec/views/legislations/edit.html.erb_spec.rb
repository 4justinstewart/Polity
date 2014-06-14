require 'spec_helper'

describe "legislations/edit" do
  before(:each) do
    @legislation = assign(:legislation, stub_model(Legislation,
      :city_identifier => "MyString",
      :status => "MyString",
      :type => ""
    ))
  end

  it "renders the edit legislation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislation_path(@legislation), "post" do
      assert_select "input#legislation_city_identifier[name=?]", "legislation[city_identifier]"
      assert_select "input#legislation_status[name=?]", "legislation[status]"
      assert_select "input#legislation_type[name=?]", "legislation[type]"
    end
  end
end
