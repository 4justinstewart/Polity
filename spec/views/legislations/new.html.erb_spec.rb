require 'spec_helper'

describe "legislations/new" do
  before(:each) do
    assign(:legislation, stub_model(Legislation,
      :status => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new legislation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislations_path, "post" do
      assert_select "input#legislation_status[name=?]", "legislation[status]"
      assert_select "input#legislation_type[name=?]", "legislation[type]"
    end
  end
end
