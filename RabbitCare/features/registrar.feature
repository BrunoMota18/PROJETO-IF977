# language: pt

Funcionalidade: registrar Funcionalidade
    Essa Funcionalidade lida com o registro do usuário.

Cenário: Registrar como Médico com sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Então Eu aperto em registrar

Cenário: Registrar como Enfermeiro com sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Então Eu aperto em registrar

Cenário: Registrar como Médico sem sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Mas Eu esqueço meu CRM
    Então Eu aperto em registrar
    E Eu devo ver um alerta

Cenário: Registrar como Enfermeiro sem sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Mas Eu esqueço meu COREN
    Então Eu aperto em registrar
    E Eu devo ver um alerta