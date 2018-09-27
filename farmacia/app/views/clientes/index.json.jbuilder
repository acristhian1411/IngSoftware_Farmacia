json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :ruc, :direccion, :telefono
  json.url cliente_url(cliente, format: :json)
end
