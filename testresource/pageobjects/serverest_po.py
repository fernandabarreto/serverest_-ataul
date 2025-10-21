##MAPEAMENTO DOS LOCATORS E MÉTODOS DO SISTEMA DE EXTRAJUDICIAL
#FORMAS DE PASSAR OS LOCATORES
#"css:button[value='Entrar']" - css
#"id:cpf' - id" 
#"//input[@id='name']" - xpath 
#adicionarText =     'Xbox Series S' - Forma de passar um dado fixo como uma variavel 

class loginPO:
    campoEmail    =     "//input[@id='email']"
    campoPassword   =   "//input[@id='password']"
    password  =         'Banana1234'
    btnEntrar   =       "css=button[type=submit]"

class cadastroProduto: 
    btnCadastro =       "//a[@data-testid='cadastrarProdutos']"
    nomeProduto =       "//input[@data-testid='nome']"
    precoProduto =      "//input[@data-testid='preco']"
    descricaoProduto =  "//textarea[@data-testid='descricao']"
    qtProduto =         "css:input[data-testid='quantity']"
    btnCadastrarProduto = "css:button[data-testid='cadastarProdutos']"
class anexo:
    uploadAnexo =        "//input[@data-testid='imagem']"

class usuariosMenu:
    btnListarUsuarios   =  "css:a[data-testid='listar-usuarios']"
    btnCadastrarUsuario = "css:a[data-testid='cadastrar-usuarios']"
    nomeUsuario = "//input[@id='nome']"
    emailUsuario =    "//input[@id='email']"
    passwordUsuario =  "//input[@id='password']"
    btnUsuario = "css:button[data-testid='cadastrarUsuario']"
    
