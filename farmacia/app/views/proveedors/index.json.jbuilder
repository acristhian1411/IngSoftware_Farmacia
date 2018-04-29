json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :ruc, :razon_social, :direccion, :telefono, :email, :prov_active
  json.url proveedor_url(proveedor, format: :json)
end
