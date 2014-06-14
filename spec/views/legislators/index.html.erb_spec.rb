require 'spec_helper'

describe "legislators/index" do
  before(:each) do
    assign(:legislators, [
      stub_model(Legislator,
        :ward => nil,
        :integer => "",
        :date => "",
        :date => "",
        :string => ""
      ),
      stub_model(Legislator,
        :ward => nil,
        :integer => "",
        :date => "",
        :date => "",
        :string => ""
      )
    ])
  end

  it "renders a list of legislators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
