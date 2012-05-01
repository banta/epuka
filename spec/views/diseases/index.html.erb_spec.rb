require 'spec_helper'

describe "diseases/index" do
  before(:each) do
    assign(:diseases, [
      stub_model(Disease,
        :name => "Name",
        :location => "Location",
        :latitude => 1.5,
        :longitude => 1.5,
        :reported_cases => "",
        :transmition_mode => "Transmition Mode",
        :signs => "Signs",
        :more_info => "MyText"
      ),
      stub_model(Disease,
        :name => "Name",
        :location => "Location",
        :latitude => 1.5,
        :longitude => 1.5,
        :reported_cases => "",
        :transmition_mode => "Transmition Mode",
        :signs => "Signs",
        :more_info => "MyText"
      )
    ])
  end

  it "renders a list of diseases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Transmition Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Signs".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
