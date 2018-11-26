# language: pt

Funcionalidade: esqueceu_senha Funcionalidade
    Essa Funcionalidade lida com a funcionalidade da recuperação da senha

Cenário: Perdeu a senha sabendo o email de recuperação, coloca o código perfeitamente
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um código por email

Cenário: Perdeu a senha não coloca o email válido
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu devo ver um alerta