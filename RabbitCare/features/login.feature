Feature: LoginFeature
    Essa Feature lida com a funcionalidade do Login

Scenario: Login com email correto e senha correto
    Given Eu navego para pagina de Login
    And Eu coloco como endereço de email teste
    And Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    And  Eu clico no botão Entrar
    Then Eu devo ver a tela inicial

Scenario: Login com Facebook Registrado
    Given Eu navego para pagina de Login
    And Eu clico no ícone do Facebook
    And Eu sou redirecionado para o Logar com o Facebook
    And Eu conecto ao meu Facebook
    And Eu aperto no botão continuar
    Then Eu devo ver a tela inicial