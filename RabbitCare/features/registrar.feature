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

Cenário: Registrar como Responsável com sucesso
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

Cenário: Registrar como Administração com sucesso
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
    E Eu vejo uma mensagem avisando para preencher o CRM

Cenário: Registrar como Responsável sem sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Mas Eu esqueço meu CPF
    Então Eu aperto em registrar
    E Eu vejo uma mensagem avisando para preencher o CPF
    
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
    E Eu vejo uma mensagem avisando para preencher o COREN

Cenário: Registrar como Administração sem sucesso
    Dado  Eu navego para pagina de inicial
    Quando  Eu aperto no registrar
    E Eu escolho o que sou  entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    Mas Eu esqueço meu CNPJ
    Então Eu aperto em registrar
    E Eu vejo uma mensagem avisando para preencher o CNPJ

Cenário: Registrar com Facebook não registrado
    Dado  Eu navego para pagina de inicial
    E  Eu clico no ícone do Facebook
    E  Eu sou redirecionado para o Logar com o Facebook
    E  Eu aperto no botão continuar
    Quando  Eu consigo Logar
    E Eu escolho o que sou entre
    |   Responsável   |
    |   Médico        |
    |   Enfermeiro    |
    |   Administração |
    E Eu preencho meus dados corretamente
    Então Eu aperto em registrar
