require 'spec_helper'

describe "diseases/edit" do
  before(:each) do
    @disease = assign(:disease, stub_model(Disease,
      :name => "MyString",
      :location => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :reported_cases => "",
      :transmition_mode => "MyString",
      :signs => "MyString",
      :more_info => "MyText"
    ))
  end

  it "renders the edit disease form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => diseases_path(@disease), :method => "post" do
      assert_select "input#disease_name", :name => "disease[name]"
      assert_select "input#disease_location", :name => "disease[location]"
      assert_select "input#disease_latitude", :name => "disease[latitude]"
      assert_select "input#disease_longitude", :name => "disease[longitude]"
      assert_select "input#disease_reported_cases", :name => "disease[reported_cases]"
      assert_select "input#disease_transmition_mode", :name => "disease[transmition_mode]"
      assert_select "input#disease_signs", :name => "disease[signs]"
      assert_select "textarea#disease_more_info", :name => "disease[more_info]"
    end
  end
end
