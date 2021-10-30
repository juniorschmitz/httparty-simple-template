#language: pt

@serverest
@serverest_product
Funcionalidade: [GET] ServeRest Product
  Como uma aplicação xpto
  Gostaria de poder chamar os endpoints da API ServeRest
  Para poder garantir seus status e validações

  @get_all_products_200
  Cenário: [GET] Get all products 201
    Quando chamar o endpoint "/produtos" com o método "get" sem parâmetros
    Então deverá retornar o status code 200
    E deverá retornar o contrato do serviço "get_all_products_200"

  @delete_after
  @get_product_200
  Cenário: [GET] Get a single existent product 200
    Dado que possua um novo produto cadastrado
    Quando chamar o endpoint "/produtos" com o método "get" com parâmetros
    Então deverá retornar o status code 200
    E deverá retornar o contrato do serviço "get_product_200"

  @get_product_by_id_400
  Cenário: [GET] Get Product By Id 400
    Dado que possua um id de produto inválido
    Quando chamar o endpoint "/produtos" com o método "get" com parâmetros
    Então deverá retornar o status code 400
    E deverá retornar a mensagem "Produto não encontrado"