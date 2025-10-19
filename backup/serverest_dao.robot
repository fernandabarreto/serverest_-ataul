*** Settings ***
Resource    ../../resources/commons/global.robot
Variables   ../../testresource/pageobjects/serverest_po.py
Variables   ../../resources/commons/properties.py
Library    Screenshot


*** Keywords ***
preencher formulario de cadastro de produto
    #Sem a FakerLibrary para os dados do cadastro, passando setada 
    Click Element    ${cadastroProduto.btnCadastro}
    Input Text       ${cadastroProduto.nomeProduto}         ISDIN Protetor Solar Facial
    Input Text       ${cadastroProduto.precoProduto}        100
    Input Text       ${cadastroProduto.descricaoProduto}    Protetor solar facial de uso diário com FPS 6
    Input Text       ${cadastroProduto.qtProduto}           6
anexar arquivo
    Sleep    03
    Caminho do arquivo     #esse caminho do arquivo está no global.robot e todas as vezes eu tenho que chamar antes de mandar upoload do arqquivo
    Choose File     ${anexo.uploadAnexo}    ${caminhoRelatorio} 
enviar o cadastro do produto
    Click Element         ${cadastroProduto.btnCadastrarProduto}   
    Sleep    02
validar cadastro do produto
    #Esse valida passando o valor esperado 
    ${validaNome}               Get Text        ${ValidarCadastro.validaNome}
    Should Be Equal As Strings     ${validaNome}       ISDIN Protetor Solar Facial
    