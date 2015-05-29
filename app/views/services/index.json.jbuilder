json.array!(@services) do |service|
  json.extract! service, :id, :name_services, :company_price, :doctor_price, :date_in, :date_out
  json.url service_url(service, format: :json)
end
