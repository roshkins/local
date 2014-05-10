require 'spec_helper'

describe "searches/index" do
  before(:each) do
    assign(:searches, [
      stub_model(Search,
        :industry_id => 1,
        :location => "Location",
        :longitude => 1.5,
        :latitude => 1.5
      ),
      stub_model(Search,
        :industry_id => 1,
        :location => "Location",
        :longitude => 1.5,
        :latitude => 1.5
      )
    ])
  end

  it "renders a list of searches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
