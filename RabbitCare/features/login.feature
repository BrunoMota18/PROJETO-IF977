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
