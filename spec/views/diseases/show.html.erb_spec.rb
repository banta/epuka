require 'spec_helper'

describe "diseases/show" do
  before(:each) do
    @disease = assign(:disease, stub_model(Disease,
      :name => "Name",
      :location => "Location",
      :latitude => 1.5,
      :longitude => 1.5,
      :reported_cases => "",
      :transmition_mode => "Transmition Mode",
      :signs => "Signs",
      :more_info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(/Transmition Mode/)
    rendered.should match(/Signs/)
    rendered.should match(/MyText/)
  end
end
