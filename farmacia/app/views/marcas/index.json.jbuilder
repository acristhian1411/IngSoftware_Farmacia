json.array!(@marcas) do |marca|
  json.extract! marca, :id, :marca_descrip, :marca_active
  json.url marca_url(marca, format: :json)
end
