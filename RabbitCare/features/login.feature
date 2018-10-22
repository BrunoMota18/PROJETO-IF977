# language: pt
Funcionalidade: Login Funcionalidade
    Essa Funcionalidade lida com a funcionalidade do Login

Cenário: Login com email correto e senha correto
    Dado  Eu navego para pagina de Login
    E  Eu coloco como endereço de email teste
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver a tela inicial

Cenário: Login com Facebook Registrado
    Dado  Eu navego para pagina de Login
    E  Eu clico no ícone do Facebook
    E  Eu sou redirecionado para o Logar com o Facebook
    E  Eu conecto ao meu Facebook
    Quando  Eu aperto no botão continuar
    Então  Eu devo ver a tela inicial

Cenário: Login com Facebook não registrado
    Dado  Eu navego para pagina de Login
    E  Eu clico no ícone do Facebook
    E  Eu sou redirecionado para o Logar com o Facebook
    E  Eu coloco uma senha invalida ao meu Facebook
    E  Eu aperto no botão continuar
    Quando  Eu não consigo Logar
    Então  Eu devo ficar na tela do Facebook até a fechar


Cenário: Login com email certo e senha errada
    Dado  Eu navego para pagina de Login
    E  Eu coloco como endereço de email teste
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver um alerta de senha errada


Cenário: Login com email inexistente
    Dado  Eu navego para pagina de Login
    E  Eu coloco como endereço de email teste
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver um alerta de email inexistente


