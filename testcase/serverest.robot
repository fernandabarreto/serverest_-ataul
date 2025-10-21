*** Settings ***
Resource          ../resources/commons/global.robot
Resource          ../testdata/Service/serverest_service.robot
Test Setup        Abrir navegador
Test Teardown     Fechar Navegador 



*** Keywords ***


*** Test Cases ***      
################################### CT's CENÁRIO 01 ####################################
CN01_CT01 - Visualização do perfil “Analista” no serverest
    [Tags]    Analista
    GIVEN que faço login no sistema      ${PERFIL.ANALISTA}

CN01_CT02 - Visualização do perfil “Gerente” no serverest
     [Tags]    Gerente
    GIVEN que faço login no sistema      ${PERFIL.GERENTE}
   
CN01_CT03 - Visualização do perfil “Cliente” no serverest
    [Tags]     Cliente
    GIVEN que faço login no sistema      ${PERFIL.CLIENTE} 

################################### CT's CENÁRIO 01 ####################################
CN02_CT01 – Cadastrar um produto 
    [Tags]    Cadastro
    GIVEN que faço login no sistema      ${PERFIL.ANALISTA}
    WHEN inicio um cadastro de um produto
    AND inserir os documentos necessários
    AND enviar a solicitação 
    THEN o sistema redireciona para a tela de listagem de produtos

CN02_CT02 – Cadastrar um produto listar cadastro de usuarios 
    [Tags]    Lista
     GIVEN que faço login no sistema      ${PERFIL.ANALISTA}
     WHEN listar usuarios cadastrados no sistema
     THEN o sistema apresenta a lista de usuarios
    

CN02_CT03 – Cadastrar um novo usuario
    [Tags]    Usuario
    GIVEN que faço login no sistema     ${PERFIL.GERENTE}
    WHEN inicio um cadastro de um novo usuario
    AND enviar a cadastro
    THEN o sistema apresenta a lista de usuarios

CN02_CT03 – Pesquisar um produto 
    [Tags]    Pesquisar
    GIVEN que faço login no sistema     ${PERFIL.CLIENTE}
    WHEN pesquiso um produto 
    THEN o sistema apresenta o produto pesquisado 
    
