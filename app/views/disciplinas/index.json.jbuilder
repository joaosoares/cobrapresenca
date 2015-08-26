json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :codigo, :nome
  json.url disciplina_url(disciplina, format: :json)
end
