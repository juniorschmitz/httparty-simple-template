#language: pt

@serverest
@serverest_user
@serverest_user_contract
Funcionalidade: [GET] ServeRest User
  Como uma aplicação xpto
  Gostaria de poder chamar os endpoints da API ServeRest
  Para poder garantir seus status e validações

  @get_all_users_contract_200
  Cenário: [GET] Get Users 200
    Quando chamar o endpoint "/usuarios" com o método "get" sem parâmetros
    Então deverá retornar o status code 200
    E deverá retornar o contrato do serviço "get_all_users_200"

  @delete_after
  @get_user_by_id_contract_200
  Cenário: [GET] Get User By Id 200
    Dado que possua um usuário pré-cadastrado
    Quando chamar o endpoint "/usuarios" com o método "get" com parâmetros
    Então deverá retornar o status code 200
    E deverá retornar o contrato do serviço "get_user_200"

  @get_user_by_id_400
  Cenário: [GET] Get User By Id 400
    Dado que possua um id de usuário inválido
    Quando chamar o endpoint "/usuarios" com o método "get" com parâmetros
    Então deverá retornar o status code 400
    E deverá retornar a mensagem "Usuário não encontrado"
