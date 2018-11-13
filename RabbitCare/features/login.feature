# language: pt

Funcionalidade: login Funcionalidade
    Essa Funcionalidade lida com a funcionalidade do Login

Cenário: Login com email correto e senha correto
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver a tela inicial

Cenário: Login com Facebook Registrado
    Dado  Eu navego para pagina de Login
    Quando  Eu clico no ícone do Facebook
    Então  Eu devo ver a tela inicial

Cenário: Login com email certo e senha errada
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver um alerta


Cenário: Login com email inexistente
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver um alerta