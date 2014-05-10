require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :title => "Title",
        :details => "MyText",
        :price => "9.99",
        :supplier_id => 1,
        :view_count => 2,
        :accept_count => 3
      ),
      stub_model(Offer,
        :title => "Title",
        :details => "MyText",
        :price => "9.99",
        :supplier_id => 1,
        :view_count => 2,
        :accept_count => 3
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
