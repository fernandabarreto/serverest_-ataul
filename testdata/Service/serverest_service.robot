*** Settings ***
Resource        ../../resources/commons/global.robot
Resource        ../dao/serverest_dao.robot


*** Keywords ***
que faço login no sistema
    [Arguments]    ${PERFIL}
    Logar no sistema    ${PERFIL}
    validar o acesso

inicio um cadastro de um produto
    preencher formulario de cadastro de produto
inserir os documentos necessários
    anexar arquivo
enviar a solicitação    
    enviar o cadastro do produto
o sistema redireciona para a tela de listagem de produtos
    validar cadastro do produto     Distinctio autem exp