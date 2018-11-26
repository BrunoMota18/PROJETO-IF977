Então("Eu devo ver a tela inicial") do
  visit('/users')
end

Então("Eu devo ver um alerta") do
  have_content('Invalid')
end

Então("Eu aperto em registrar") do
  find_link('Sign in with Facebook').visible?
end

Então("Eu recebo um código por email") do
  "código recebido por email"
end

Então("Eu vou para tela de recuperação de senha") do
  visit('/users/password/new')
end

Então("Eu coloco o meu email no campo email") do
  fill_in('Email', :with => 'abc@teste.com')
end

Então("Eu devo colocar as informações da próxima consulta") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu aperto em confirmar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo ver a visita marcada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo escolher a consulta para desmarcar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu não devo ver a visita que foi desmarcada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu estou na registro de pacientes") do
  visit('/pacientes/new')
end

Então("Eu preencho os dados corretamente") do
   #fill_in('Cpf responsavel', :with => '12345678910')
   #fill_in('Nome responsavel', :with => 'abc')
   #fill_in('Cpf', :with => '12121212121')
   #fill_in('Nome', :with => 'assa')
   #fill_in('Estado', :with => 'Pernambuco')
   #fill_in('Coren', :with => '123456789121452')
end
Então("aperto no sign up da página") do
  find_link('Sign up')
end
