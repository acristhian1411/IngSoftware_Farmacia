json.array!(@sales) do |sale|
  json.extract! sale, :id, :number, :date, :state, :user_id
  json.url sale_url(sale, format: :json)
end
