json.array!(@agencies) do |agency|
  json.extract! agency, :id, :name, :address, :target, :latitude, :longitude, :logo
  json.url agency_url(agency, format: :json)
end
