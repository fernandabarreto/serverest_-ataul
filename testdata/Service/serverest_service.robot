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
    validar cadastro do produto     Oriental Gold Ball

listar usuarios cadastrados no sistema 
    listar usuarios cadastrados 
o sistema apresenta a lista de usuarios
    validar lista de usuarios       Lista dos usuários      

inicio um cadastro de um novo usuario
    preencher formulario de cadastro usuario
enviar a cadastro
    enviar o cadastro do usuario
pesquiso um produto 
    adiciono um dado para a pesquisa
    clicar no botao
o sistema apresenta o produto pesquisado 
    validar produto pesquisado       Produto QA Elegant Soft Soap