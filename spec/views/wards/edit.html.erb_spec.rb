require 'spec_helper'

describe "wards/edit" do
  before(:each) do
    @ward = assign(:ward, stub_model(Ward,
      :ward_number => 1,
      :legislator => nil
    ))
  end

  it "renders the edit ward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ward_path(@ward), "post" do
      assert_select "input#ward_ward_number[name=?]", "ward[ward_number]"
      assert_select "input#ward_legislator[name=?]", "ward[legislator]"
    end
  end
end
