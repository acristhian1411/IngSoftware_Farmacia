json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :ruc, :direccion, :telefono, :cliente_active
  json.url cliente_url(cliente, format: :json)
end
