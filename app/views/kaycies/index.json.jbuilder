json.array!(@kaycies) do |kaycy|
  json.extract! kaycy, :id, :name, :content
  json.url kaycy_url(kaycy, format: :json)
end
