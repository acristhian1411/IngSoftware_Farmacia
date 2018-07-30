json.array!(@sale_details) do |sale_detail|
  json.extract! sale_detail, :id, :sale_id, :number, :producto_id, :cantidad, :precio
  json.url sale_detail_url(sale_detail, format: :json)
end
