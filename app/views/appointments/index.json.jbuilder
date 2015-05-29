json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :id_clinic, :id_user, :id_patient, :id_services, :data, :id_doctor
  json.url appointment_url(appointment, format: :json)
end
