json.extract! medicamento, :id, :nome, :descricao, :cpf, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
