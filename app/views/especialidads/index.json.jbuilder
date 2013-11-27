json.array!(@especialidads) do |especialidad|
  json.extract! especialidad, :nombre
  json.url especialidad_url(especialidad, format: :json)
end
