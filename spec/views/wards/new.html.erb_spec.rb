require 'spec_helper'

describe "wards/new" do
  before(:each) do
    assign(:ward, stub_model(Ward,
      :ward_number => 1,
      :legislator => nil
    ).as_new_record)
  end

  it "renders new ward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wards_path, "post" do
      assert_select "input#ward_ward_number[name=?]", "ward[ward_number]"
      assert_select "input#ward_legislator[name=?]", "ward[legislator]"
    end
  end
end
