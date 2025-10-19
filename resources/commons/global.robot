
*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Variables  properties.py
Variables   ../../testresource/pageobjects/serverest_po.py
Library    ../../testresource/pageobjects/serverest_po.py
Library    OperatingSystem


*** Variables ***
&{PERFIL}    ANALISTA=analista@gmail.com    
...          GERENTE=gerente@gmail.com              
...          CLIENTE=cliente@gmail.com    


*** Keywords ***
Abrir Navegador
    Open Browser    ${url.serverest}     ${url.BROWSER}
    Set Window Size     1400    1080
 

Fechar Navegador
    Capture Page Screenshot
    Close Browser

Logar no sistema 
    [Arguments]    ${PERFIL}
    Run Keyword If    "${PERFIL}" == "ANALISTA"    Logar no sistema    ${PERFIL.ANALISTA}
    ...  ELSE     Run Keyword If      "${PERFIL}" == "GERENTE"    Logar no sistema    ${PERFIL.GERENTE}
    ...  ELSE     Run Keyword If      "${PERFIL}" == "CLIENTE"    Logar no sistema    ${PERFIL.CLIENTE}   

    Sleep    2
    Wait Until Element Is Visible                    ${loginPO.campoEmail}
    Input Text         ${loginPO.campoEmail}         ${PERFIL}
    Input Text         ${loginPO.campoPassword}      ${loginPO.password}
    Click Element      ${loginPO.btnEntrar}
    
validar o acesso
    Sleep    05
    Title Should Be   Front - ServeRest
Caminho do arquivo
    ${caminhoRelatorio}     Normalize Path              ${CURDIR}${/}..${/}..${/}testresource${/}files${/}isdin.jpg
    Set Global Variable    ${caminhoRelatorio}