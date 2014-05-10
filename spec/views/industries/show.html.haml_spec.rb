require 'spec_helper'

describe "industries/show" do
  before(:each) do
    @industry = assign(:industry, stub_model(Industry,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
