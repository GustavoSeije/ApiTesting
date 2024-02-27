*** Settings *** 
Resource        ../resources/api_testing_usuarios.resource

*** Variables ***

*** Test Cases ***
Cenário 01: Cadastro de um novo usuário com sucesso
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest    email=${EMAIL}    status_code_desejado=201
    Conferir se o usuário foi cadastrado corretamente

Cenário 02: Cadastro de um usuário já existente
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest    email=${EMAIL}    status_code_desejado=201
    Repetir o cadastro do Usuário
    Verificar se a API não permitiu o cadastro repetido
teste para dar commit

NOVO TESTE