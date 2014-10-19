json.array!(@biscuits) do |biscuit|
  json.extract! biscuit, :id, :name, :content
  json.url biscuit_url(biscuit, format: :json)
end
