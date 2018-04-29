json.array!(@tipo_meds) do |tipo_med|
  json.extract! tipo_med, :id, :tipo_descrip, :tipo_active
  json.url tipo_med_url(tipo_med, format: :json)
end
