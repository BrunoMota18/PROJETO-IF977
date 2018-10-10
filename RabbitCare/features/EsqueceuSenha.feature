Feature: EsqueceuSenhaFeature
    Essa Feature lida com a funcionalidade da recuperação da senha

Scenario: Perdeu a senha sabendo o email de recuperação, colocando o código perfeitamente, nova senha e a repetindo corretamente
    Given Eu navego para pagina de Login
    When Eu aperto no Esqueceu a senha
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
    When Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um alerta que o email não é válido

Scenario: Perdeu a senha sabendo o email de recuperação, colocando o código perfeitamente e colocando senhas diferentes
    Given Eu navego para pagina de Login
    When Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um código por email
    And Eu coloco o código no campo código
    And Eu coloco minha nova senha
    And Eu coloco uma senha diferente da que coloquei no outro campo
    When Eu aperto no confirmar
    Then Eu recebo um alerta mostrando que as senhas são diferentes

Scenario: Perdeu a senha sabendo o email de recuperação, colocando o código errado e senhas certas.
    Given Eu navego para pagina de Login
    When Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um código por email
    And Eu coloco um código diferente do código recebido no campo código
    And Eu coloco minha nova senha
    And Eu repito minha nova senha no outro campo senha
    When Eu aperto no confirmar
    Then Eu recebo um alerta dizendo que o código não é valido

Scenario: Perdeu a senha sabendo o email de recuperação, colocando o código errado e senhas diferentes.
    Given Eu navego para pagina de Login
    When Eu aperto no Esqueceu a senha
    Then Eu vou para tela de recuperação de senha
    And Eu coloco o meu email no campo email
    When Eu aperto no botão enviar
    Then Eu recebo um código por email
    And Eu coloco um código diferente do código recebido no campo código
    And Eu coloco minha nova senha
    And Eu coloco uma senha diferente da que coloquei no outro campo
    When Eu aperto no confirmar
    Then Eu recebo uma alerta dizendo que o código não é valido e senhas são diferentes.
