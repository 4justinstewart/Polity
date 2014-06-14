require 'spec_helper'

describe "legislators/edit" do
  before(:each) do
    @legislator = assign(:legislator, stub_model(Legislator,
      :ward => nil,
      :integer => "",
      :date => "",
      :date => "",
      :string => ""
    ))
  end

  it "renders the edit legislator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislator_path(@legislator), "post" do
      assert_select "input#legislator_ward[name=?]", "legislator[ward]"
      assert_select "input#legislator_integer[name=?]", "legislator[integer]"
      assert_select "input#legislator_date[name=?]", "legislator[date]"
      assert_select "input#legislator_date[name=?]", "legislator[date]"
      assert_select "input#legislator_string[name=?]", "legislator[string]"
    end
  end
end
