Quando("Eu clico no botão Entrar") do
  click_on ('Log in')
end

Quando("Eu clico no ícone do Facebook") do
  find_link('Sign in with Facebook').visible?
end

Quando("Eu aperto no Esqueceu a senha") do
  click_on('Forgot your password?')
end

Quando("Eu aperto no botão enviar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Eu aperto no registrar") do
  click_on('Sign up')
end

Quando("Eu escolho o que sou  entre") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Eu preencho meus dados corretamente") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Eu esqueço meu CRM") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Eu esqueço meu COREN") do
  pending # Write code here that turns the phrase above into concrete actions
end