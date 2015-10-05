json.array!(@functionaries) do |functionary|
  json.extract! functionary, :id, :fname, :lname, :photo, :agency_id, :charge, :salary, :schooling, :experience, :evaluation
  json.url functionary_url(functionary, format: :json)
end
