require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :body => "MyText",
      :feature_text => "MyText",
      :user_id => 1,
      :category_id => 1,
      :status => 1,
      :fonticon => "MyString",
      :postimageurl => "MyString",
      :featured => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "textarea#post_feature_text[name=?]", "post[feature_text]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_category_id[name=?]", "post[category_id]"

      assert_select "input#post_status[name=?]", "post[status]"

      assert_select "input#post_fonticon[name=?]", "post[fonticon]"

      assert_select "input#post_postimageurl[name=?]", "post[postimageurl]"

      assert_select "input#post_featured[name=?]", "post[featured]"
    end
  end
end
