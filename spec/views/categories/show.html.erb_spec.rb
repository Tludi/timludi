require 'rails_helper'

RSpec.describe "categories/show", :type => :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "Name",
      :fonticon => "Fonticon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Fonticon/)
  end
end
