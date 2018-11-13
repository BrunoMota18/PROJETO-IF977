# language: pt

Funcionalidade: visitas Funcionalidade
    Essa Funcionalidade lida com as visita que o médico pode marcar e visualização das mesmas por qualquer usuário

Contexto: 
    Login com email correto e senha correto
    Dado  Eu navego para pagina de Login
    E  Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    Quando   Eu clico no botão Entrar
    Então  Eu devo ver a tela inicial

Cenário: Marcando consulta
    Dado Eu devo ver a tela inicial
    Quando Eu aperto no + na janela visitas
    Então  Eu devo colocar as informações da próxima consulta
    E Eu aperto em confirmar
    Então Eu devo ver a visita marcada

Cenário: Desmarcando consulta
    Dado Eu devo ver a tela inicial
    Quando Eu aperto no - na janela visitas
    Então  Eu devo escolher a consulta para desmarcar
    E Eu aperto em confirmar
    Então Eu não devo ver a visita que foi desmarcada
