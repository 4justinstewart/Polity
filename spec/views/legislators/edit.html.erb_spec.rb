require 'spec_helper'

describe "legislators/edit" do
  before(:each) do
    @legislator = assign(:legislator, stub_model(Legislator,
      :alderman_id => 1,
      :represented_ward_id => 1,
      :party_affiliation => "MyString"
    ))
  end

  it "renders the edit legislator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", legislator_path(@legislator), "post" do
      assert_select "input#legislator_alderman_id[name=?]", "legislator[alderman_id]"
      assert_select "input#legislator_represented_ward_id[name=?]", "legislator[represented_ward_id]"
      assert_select "input#legislator_party_affiliation[name=?]", "legislator[party_affiliation]"
    end
  end
end
