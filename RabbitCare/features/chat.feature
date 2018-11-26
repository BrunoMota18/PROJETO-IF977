# language: pt

Funcionalidade: chat funcionalidade
    Essa Funcionalidade lida com a comunicação interna

Contexto: 
    Login com email correto e senha correto
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver a tela inicial

Cenário: Verificando existencia do chat
    Dado Eu estou na tela inicial
    Quando Eu aperto no botão enviar mensagem
