json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :sec_descrip, :seccion_active
  json.url seccion_url(seccion, format: :json)
end
