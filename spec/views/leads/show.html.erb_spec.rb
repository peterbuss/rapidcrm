require 'rails_helper'

RSpec.describe "leads/show", :type => :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :name => "Name",
      :company => "Company"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Company/)
  end
end
