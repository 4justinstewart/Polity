require 'spec_helper'

describe "legislators/new" do
  before(:each) do
    assign(:legislator, stub_model(Legislator,
      :alderman_id => 1,
      :represented_ward_id => 1,
      :party_affiliation => "MyString"
    ).as_new_record)
  end

  it "renders new legislator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislators_path, "post" do
      assert_select "input#legislator_alderman_id[name=?]", "legislator[alderman_id]"
      assert_select "input#legislator_represented_ward_id[name=?]", "legislator[represented_ward_id]"
      assert_select "input#legislator_party_affiliation[name=?]", "legislator[party_affiliation]"
    end
  end
end
