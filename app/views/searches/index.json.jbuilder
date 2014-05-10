json.array!(@searches) do |search|
  json.extract! search, :id, :industry_id, :location, :longitude, :latitude
  json.url search_url(search, format: :json)
end
