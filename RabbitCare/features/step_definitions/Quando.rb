Quando("Eu aperto no Esqueceu a senha") do
  click('Sign in with Facebook')
end

Quando("Eu aperto no botão enviar") do
  click_on ('a verificar')
end

Quando("Eu aperto no confirmar") do
  click_on ('a verificar')
end

Quando("Eu clico no botão Entrar") do
  click_on ('Log in')
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
  
end

Quando("Eu esqueço meu COREN") do
  
end

Quando("Eu esqueço meu CPF") do

end

Quando("Eu preencho meus dados corretamente") do
  "fill_in ....."
end

Quando("Eu esqueço meu CRM") do
  
end
