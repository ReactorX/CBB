json.array!(@content_clinics) do |content_clinic|
  json.extract! content_clinic, :id, :name_clinic, :adress_clinic, :zip_code_clinic, :city_linic
  json.url content_clinic_url(content_clinic, format: :json)
end
