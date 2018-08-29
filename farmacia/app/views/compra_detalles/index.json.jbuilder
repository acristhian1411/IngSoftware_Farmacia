json.array!(@compra_detalles) do |compra_detalle|
  json.extract! compra_detalle, :id, :compra_id, :number, :producto_id, :cantidad, :precio
  json.url compra_detalle_url(compra_detalle, format: :json)
end
