json.array!(@questions) do |question|
  json.extract! question, :id, :question, :agency_target, :agency_description, :agency_contact, :functionary_functions, :functionary_schooling, :functionary_experience, :functionary_salary, :functionary_contact
  json.url question_url(question, format: :json)
end
