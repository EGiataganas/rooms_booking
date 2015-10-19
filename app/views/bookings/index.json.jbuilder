json.array!(@bookings) do |booking|
  json.extract! booking, :id, :title, :description, :user_id, :room_id
  json.url booking_url(booking, format: :json)
end
