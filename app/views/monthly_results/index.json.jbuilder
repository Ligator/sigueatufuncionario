json.array!(@monthly_results) do |monthly_result|
  json.extract! monthly_result, :id, :release, :functionay, :image, :agency, :evaluation, :place
  json.url monthly_result_url(monthly_result, format: :json)
end
