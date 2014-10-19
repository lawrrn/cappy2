json.array!(@categories) do |category|
  json.extract! category, :id, :name, :content
  json.url category_url(category, format: :json)
end
