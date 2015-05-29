json.array!(@patients) do |patient|
  json.extract! patient, :id, :pesel, :name_patient, :firstname_patient, :adress, :city_patient, :zip_code_patient, :phone_patient, :patient_card_nr, :ICD10code, :id_insurer
  json.url patient_url(patient, format: :json)
end
