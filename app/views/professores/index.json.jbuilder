json.array!(@professores) do |professor|
  json.extract! professor, :id, :nome, :bio_curta, :contato
  json.url professor_url(professor, format: :json)
end
