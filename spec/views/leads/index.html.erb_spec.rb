require 'rails_helper'

RSpec.describe "leads/index", :type => :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :name => "Name",
        :company => "Company"
      ),
      Lead.create!(
        :name => "Name",
        :company => "Company"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
  end
end
