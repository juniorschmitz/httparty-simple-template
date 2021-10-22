Dado("que possua um payload de um produto válido") do
  @body = Factory::Dynamic.valid_product
end

Então("deverá retornar uma lista de produtos") do
  @parsed_response_body = JSON.parse(@response.body)
  expect(@parsed_response_body["produtos"].size).to be > 1
  expect(@parsed_response_body["produtos"].class).to be_a_kind_of(Array.class)
end

Dado("que possua um novo produto cadastrado") do
  steps %{
    Dado que tenha salvado o token para as requisições
    E que possua um payload de um produto válido
    Quando chamar o endpoint "/produtos" com o método "post" sem parâmetros
    Então deverá retornar o status code 201
    E deverá retornar a mensagem "Cadastro realizado com sucesso"
  }
  @params = "/#{@response['_id']}"
end

Dado("que possua um id de produto inválido") do
  @params = "/iddeProdutoquenaoExiste"
end
