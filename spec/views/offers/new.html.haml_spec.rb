require 'spec_helper'

describe "offers/new" do
  before(:each) do
    assign(:offer, stub_model(Offer,
      :title => "MyString",
      :details => "MyText",
      :price => "9.99",
      :supplier_id => 1,
      :view_count => 1,
      :accept_count => 1
    ).as_new_record)
  end

  it "renders new offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offers_path, "post" do
      assert_select "input#offer_title[name=?]", "offer[title]"
      assert_select "textarea#offer_details[name=?]", "offer[details]"
      assert_select "input#offer_price[name=?]", "offer[price]"
      assert_select "input#offer_supplier_id[name=?]", "offer[supplier_id]"
      assert_select "input#offer_view_count[name=?]", "offer[view_count]"
      assert_select "input#offer_accept_count[name=?]", "offer[accept_count]"
    end
  end
end
