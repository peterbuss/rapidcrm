require 'rails_helper'

RSpec.describe "leads/edit", :type => :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :name => "MyString",
      :company => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "input#lead_name[name=?]", "lead[name]"

      assert_select "input#lead_company[name=?]", "lead[company]"
    end
  end
end
