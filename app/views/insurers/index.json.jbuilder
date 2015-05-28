json.array!(@insurers) do |insurer|
  json.extract! insurer, :id, :name_insurer, :adress, :zip_code_insurer, :city_insurer
  json.url insurer_url(insurer, format: :json)
end
