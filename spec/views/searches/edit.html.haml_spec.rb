require 'spec_helper'

describe "searches/edit" do
  before(:each) do
    @search = assign(:search, stub_model(Search,
      :industry_id => 1,
      :location => "MyString",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders the edit search form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", search_path(@search), "post" do
      assert_select "input#search_industry_id[name=?]", "search[industry_id]"
      assert_select "input#search_location[name=?]", "search[location]"
      assert_select "input#search_longitude[name=?]", "search[longitude]"
      assert_select "input#search_latitude[name=?]", "search[latitude]"
    end
  end
end
