json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :num_attendance, :setup, :equipment
  json.url room_url(room, format: :json)
end
