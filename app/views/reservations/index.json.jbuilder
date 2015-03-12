json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :flight_id, :user_id, :seat_row, :seat_column
  json.url reservation_url(reservation, format: :json)
end
