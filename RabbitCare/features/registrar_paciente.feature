# language: pt

Funcionalidade: registrar paciente funcionalidade
    Essa Funcionalidade lida com com o cadastro de um paciente

Contexto: 
    Login com email correto e senha correto
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver a tela inicial

Cenário: Adicionando paciente corretamente
    Dado Eu estou na tela inicial
    Quando Eu aperto adicionar pacientes
    Então  Eu estou na registro de pacientes
    E Eu preencho os dados corretamente
    E aperto no sign up da página