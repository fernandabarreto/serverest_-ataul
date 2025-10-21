*** Settings ***
Resource    ../../resources/commons/global.robot
Variables   ../../testresource/pageobjects/serverest_po.py
Variables   ../../resources/commons/properties.py
Library    Screenshot
Library     FakerLibrary        locale=pt_BR
Library    String
Library    XML



*** Keywords ***
preencher formulario de cadastro de produto
    #Com a FakerLibrary para os dados do cadastro, "[0:15]" Isso significa a quantidade de caracteres que será passado nos campos"
    ${produto}        FakerLibrary.Text
    ${descricao}      FakerLibrary.Text

    Click Element    ${cadastroProduto.btnCadastro}
    Input Text       ${cadastroProduto.nomeProduto}           ${produto}[0:15]
    Input Text       ${cadastroProduto.precoProduto}          100
    Input Text       ${cadastroProduto.descricaoProduto}      ${descricao}[0:20]
    Input Text       ${cadastroProduto.qtProduto}             2
anexar arquivo
    Sleep    01
    Caminho do arquivo        #Esse é o caminho do arquivo está no global.robot e todas as vezes eu tenho que chamar antes de mandar upoload do arquivo
    Choose File     ${anexo.uploadAnexo}    ${caminhoRelatorio} 
enviar o cadastro do produto
    Click Element         ${cadastroProduto.btnCadastrarProduto}   
    Sleep    02
validar cadastro do produto
    #Esse valida passando o valor como uma variavel, o valor deve ser informando na service.robot, variavel dinamica  ${expected_text}

    [Arguments]    ${expected_text}
    ${validaNome}    Get Text    xpath=//td[text()='${expected_text}']
    Should Be Equal As Strings    ${validaNome}    ${expected_text}

listar usuarios cadastrados 
    Click Element   ${usuariosMenu.btnListarUsuarios}
    Sleep    01

validar lista de usuarios
    [Arguments]    ${validatexto}

    ${texto}     Get Text    css=h1
    Should Be Equal As Strings    ${texto}   ${validatexto}  

     
preencher formulario de cadastro usuario
    ${nome}        FakerLibrary.Name
    ${email}      FakerLibrary.Email

    Click Element    ${usuariosMenu.btnCadastrarUsuario}
    Input Text     ${usuariosMenu.nomeUsuario}    ${nome} 
    Input Text     ${usuariosMenu.emailUsuario}    ${email}
    Input Text     ${usuariosMenu.passwordUsuario}     ${loginPO.password}
    
    
 enviar o cadastro do usuario   
     Click Element    ${usuariosMenu.btnUsuario}
     #Sleep    05
adiciono um dado para a pesquisa
    Input Text      ${pesquisa.campoTexto}   ${pesquisa.texto}
clicar no botao
    Click Button    ${pesquisa.btnPesquisar}
    Sleep    02
validar produto pesquisado
    [Arguments]    ${validatexto}

    ${texto}     Get Text    css=h5
    Should Be Equal As Strings    ${texto}   ${validatexto}  