json.array!(@apppointments) do |apppointment|
  json.extract! apppointment, :id, :title, :date, :location, :memo
  json.url apppointment_url(apppointment, format: :json)
end
