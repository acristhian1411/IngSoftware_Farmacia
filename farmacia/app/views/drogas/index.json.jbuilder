json.array!(@drogas) do |droga|
  json.extract! droga, :id, :droga_descrip, :droga_active
  json.url droga_url(droga, format: :json)
end
