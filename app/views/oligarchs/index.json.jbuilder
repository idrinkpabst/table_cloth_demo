json.array!(@oligarchs) do |oligarch|
  json.extract! oligarch, :id, :name, :rank, :age, :net_worth, :properties
  json.url oligarch_url(oligarch, format: :json)
end
