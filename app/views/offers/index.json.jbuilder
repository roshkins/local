json.array!(@offers) do |offer|
  json.extract! offer, :id, :title, :details, :price, :supplier_id, :view_count, :accept_count
  json.url offer_url(offer, format: :json)
end
