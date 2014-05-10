require 'spec_helper'

describe "industries/edit" do
  before(:each) do
    @industry = assign(:industry, stub_model(Industry,
      :title => "MyString"
    ))
  end

  it "renders the edit industry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", industry_path(@industry), "post" do
      assert_select "input#industry_title[name=?]", "industry[title]"
    end
  end
end
