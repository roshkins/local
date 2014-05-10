require 'spec_helper'

describe "industries/index" do
  before(:each) do
    assign(:industries, [
      stub_model(Industry,
        :title => "Title"
      ),
      stub_model(Industry,
        :title => "Title"
      )
    ])
  end

  it "renders a list of industries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
