# language: pt

Funcionalidade: EsqueceuSenhaFuncionalidade
    Essa Funcionalidade lida com a funcionalidade da recuperação da senha

Cenário: Perdeu a senha sabendo o email de recuperação, colocE o o código perfeitamente, nova senha e a repetindo corretamente
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um código por email
    E  Eu coloco o código no campo código
    E  Eu coloco minha nova senha
    E  Eu repito minha nova senha no outro campo senha
    Quando  Eu aperto no confirmar
    Então  Eu recebo uma mensagem dizendo que a senha foi alterada e volto para tela inicial

Cenário: Perdeu a senha não colocE o email válido
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um alerta Quando email não é válido

Cenário: Perdeu a senha sabendo o email de recuperação, colocE o o código perfeitamente e colocE o senhas diferentes
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um código por email
    E  Eu coloco o código no campo código
    E  Eu coloco minha nova senha
    E  Eu coloco uma senha diferente da que coloquei no outro campo
    Quando  Eu aperto no confirmar
    Então  Eu recebo um alerta mostrE o que as senhas são diferentes

Cenário: Perdeu a senha sabendo o email de recuperação, colocE o o código errado e senhas certas.
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um código por email
    E  Eu coloco um código diferente do código recebido no campo código
    E  Eu coloco minha nova senha
    E  Eu repito minha nova senha no outro campo senha
    Quando  Eu aperto no confirmar
    Então  Eu recebo um alerta dizendo Quando código não é valido

Cenário: Perdeu a senha sabendo o email de recuperação, colocE o o código errado e senhas diferentes.
    Dado  Eu navego para pagina de Login
    Quando  Eu aperto no Esqueceu a senha
    Então  Eu vou para tela de recuperação de senha
    E  Eu coloco o meu email no campo email
    Quando  Eu aperto no botão enviar
    Então  Eu recebo um código por email
    E  Eu coloco um código diferente do código recebido no campo código
    E  Eu coloco minha nova senha
    E  Eu coloco uma senha diferente da que coloquei no outro campo
    Quando  Eu aperto no confirmar
    Então  Eu recebo uma alerta dizendo Quando código não é valido e senhas são diferentes.
