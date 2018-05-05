json.array!(@productos) do |producto|
  json.extract! producto, :id, :codigo, :prod_descrip, :fecha_vence, :cantidad, :precio_compra, :precio_venta, :prod_active, :droga_id, :marca_id, :proveedor_id, :seccion_id, :tipo_med_id
  json.url producto_url(producto, format: :json)
end
