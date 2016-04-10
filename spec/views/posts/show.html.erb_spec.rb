require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "Title",
      :body => "MyText",
      :feature_text => "MyText",
      :user_id => 1,
      :category_id => 2,
      :status => 3,
      :fonticon => "Fonticon",
      :postimageurl => "Postimageurl",
      :featured => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Fonticon/)
    expect(rendered).to match(/Postimageurl/)
    expect(rendered).to match(/4/)
  end
end
