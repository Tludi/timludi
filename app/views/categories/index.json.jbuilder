json.array!(@categories) do |category|
  json.extract! category, :id, :name, :fonticon
  json.url category_url(category, format: :json)
end
