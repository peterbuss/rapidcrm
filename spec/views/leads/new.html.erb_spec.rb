require 'rails_helper'

RSpec.describe "leads/new", :type => :view do
  before(:each) do
    assign(:lead, Lead.new(
      :name => "MyString",
      :company => "MyString"
    ))
  end

  it "renders new lead form" do
    render

    assert_select "form[action=?][method=?]", leads_path, "post" do

      assert_select "input#lead_name[name=?]", "lead[name]"

      assert_select "input#lead_company[name=?]", "lead[company]"
    end
  end
end
