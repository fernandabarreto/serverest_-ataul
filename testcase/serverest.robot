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

CN02_CT04 – Pesquisar um produto 
    [Tags]    Pesquisar
    GIVEN que faço login no sistema     ${PERFIL.CLIENTE}
    WHEN pesquiso um produto 
    THEN o sistema apresenta o produto pesquisado 
    
CN02_CT05 – Adicionar na lista de compras
    [Tags]    Compra
    GIVEN que faço login no sistema     ${PERFIL.CLIENTE}
    WHEN pesquiso um produto
    AND adicionar na lista de compra 
    THEN o sistema apresenta a lista de compras
CN02_CT06 – Aumentar a quantidade de produto 
    [Tags]    Qt
    GIVEN que faço login no sistema     ${PERFIL.CLIENTE}
    WHEN pesquiso um produto
    AND adicionar na lista de compra 
    AND o sistema apresenta a lista de compras
    THEN aumentar a quantidade de produto na lista

CN02_CT07 - Adicionar oa carrinho 
    [Tags]    Carrinho
    GIVEN que faço login no sistema     ${PERFIL.CLIENTE}
    WHEN pesquiso um produto
    AND adicionar na lista de compra 
    AND o sistema apresenta a lista de compras
    THEN adicionar oa carrinho de compras