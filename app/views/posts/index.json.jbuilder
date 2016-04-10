json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :feature_text, :user_id, :category_id, :status, :fonticon, :postimageurl, :featured
  json.url post_url(post, format: :json)
end
