json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :pwz_number, :name, :surname
  json.url doctor_url(doctor, format: :json)
end
