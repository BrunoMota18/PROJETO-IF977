Então("Eu vou para tela de recuperação de senha") do
  visit ('/users/password/new')
end

Então("Eu coloco o meu email no campo email") do
  fill_in email, with => email@email
end

Então("Eu recebo um código por email") do
  "Código recebido via email, não se testa aqui"
end

Então("Eu coloco o código no campo código") do
  fill in código, with => String
end

Então("Eu coloco minha nova senha") do
  fill_in password, with => @String
end

Então("Eu repito minha nova senha no outro campo senha") do
  fill_in password_confirmation, with => @String
end

Então("Eu recebo uma mensagem dizendo que a senha foi alterada e volto para tela inicial") do
  visit ('/users/sign_in')
end

Então("Eu recebo um alerta Quando email não é válido") do
  "alerta recebido na tela"
end

Então("Eu coloco uma senha diferente da que coloquei no outro campo") do
    password_confirmation != password
end

Então("Eu recebo um alerta mostrE o que as senhas são diferentes") do
  "passwords inst match"
end

Então("Eu coloco um código diferente do código recebido no campo código") do
  fill_in in código, with => String
end

Então("Eu recebo um alerta dizendo Quando código não é valido") do
  "mensagem de alerta"
end

Então("Eu recebo uma alerta dizendo Quando código não é valido e senhas são diferentes.") do
  "mensagem de alerta"
end

Então("Eu devo ver a tela inicial") do
  visit ('/users/sign_in/')
end

Então("Eu devo ficar na tela do Facebook até a fechar") do
  sign_in_and_redirect @user, event: :authentication
end

Então("Eu devo ver um alerta de senha errada") do
  "mensagem de alerta"
end

Então("Eu devo ver um alerta de email inexistente") do
  "mensagem de alerta"
end

Então("Eu escolho o que sou entre") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.raw
end

Então("Eu escolho o que sou  entre") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.raw
end

Então("Eu vejo uma mensagem avisando para preencher o CRM") do
  "mensagem de alerta"
end

Então("Eu vejo uma mensagem avisando para preencher o CPF") do
  "mensagem de alerta"
end

Então("Eu vejo uma mensagem avisando para preencher o COREN") do
  "mensagem de alerta"
end

Então("Eu vejo uma mensagem avisando para preencher o CNPJ") do
  "mensagem de alerta"
end

Então("Eu aperto em registrar") do
  visit ('/users/sign_up')
end