json.array!(@archives) do |archive|
  json.extract! archive, :id, :id_appointments, :state, :date
  json.url archive_url(archive, format: :json)
end
