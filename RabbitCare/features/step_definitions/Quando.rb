Quando("Eu aperto no Esqueceu a senha") do
  click_on ('/users/password/new')
end

Quando("Eu aperto no botão enviar") do
  click_on ('a verificar')
end

Quando("Eu aperto no confirmar") do
  click_on ('a verificar')
end

Quando("Eu clico no botão Entrar") do
  click_on ('a verificar')
end

Quando("Eu aperto no botão continuar") do
  click_on ('a verificar')
end

Quando("Eu não consigo Logar") do
  redirect_to root_path
end

Quando("Eu consigo Logar") do
  sign_in_and_redirect
end

Quando("Eu aperto no registrar") do
  click_on ('/users/sign_up')
end

Quando("Eu esqueço meu CNPJ") do
  cnpj: nil
end

Quando("Eu esqueço meu COREN") do
  coren: nil
end

Quando("Eu esqueço meu CPF") do
  cpf: nil
end

Quando("Eu preencho meus dados corretamente") do
  "fill_in ....."
end

Quando("Eu esqueço meu CRM") do
  crm: nil
end
