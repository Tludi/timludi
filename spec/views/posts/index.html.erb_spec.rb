require 'rails_helper'

RSpec.describe "posts/index", :type => :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :title => "Title",
        :body => "MyText",
        :feature_text => "MyText",
        :user_id => 1,
        :category_id => 2,
        :status => 3,
        :fonticon => "Fonticon",
        :postimageurl => "Postimageurl",
        :featured => 4
      ),
      Post.create!(
        :title => "Title",
        :body => "MyText",
        :feature_text => "MyText",
        :user_id => 1,
        :category_id => 2,
        :status => 3,
        :fonticon => "Fonticon",
        :postimageurl => "Postimageurl",
        :featured => 4
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Fonticon".to_s, :count => 2
    assert_select "tr>td", :text => "Postimageurl".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
