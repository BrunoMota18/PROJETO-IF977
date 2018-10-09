Feature: EsqueceuSenhaFeature
    Essa Feature lida com a funcionalidade da recuperação da senha

Scenario: Perdeu a senha sabendo o email de recuperação, colocando o código perfeitamente, nova senha e a repetindo corretamente
    Given Eu navego para pagina de Login
    when Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um código por email
    And Eu coloco o código no campo código
    And Eu coloco minha nova senha
    And Eu repito minha nova senha no outro campo senha
    When Eu aperto no confirmar
    Then Eu recebo uma mensagem dizendo que a senha foi alterada e volto para tela inicial

Scenario: Perdeu a senha não colocando email válido
    Given Eu navego para pagina de Login
    when Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um alerta que o email não é válido
    