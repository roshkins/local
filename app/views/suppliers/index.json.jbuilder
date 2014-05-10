json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :address, :industry
  json.url supplier_url(supplier, format: :json)
end
