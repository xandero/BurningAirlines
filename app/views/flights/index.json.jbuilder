json.array!(@flights) do |flight|
  json.extract! flight, :id, :flight_num, :date, :origin, :destination, :airplane_id
  json.url flight_url(flight, format: :json)
end
