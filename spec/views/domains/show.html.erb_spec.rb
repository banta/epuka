require 'spec_helper'

describe "domains/show" do
  before(:each) do
    @domain = assign(:domain, stub_model(Domain,
      :name => "Name",
      :more_info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
