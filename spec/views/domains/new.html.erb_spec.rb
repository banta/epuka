require 'spec_helper'

describe "domains/new" do
  before(:each) do
    assign(:domain, stub_model(Domain,
      :name => "MyString",
      :more_info => "MyText"
    ).as_new_record)
  end

  it "renders new domain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domains_path, :method => "post" do
      assert_select "input#domain_name", :name => "domain[name]"
      assert_select "textarea#domain_more_info", :name => "domain[more_info]"
    end
  end
end
