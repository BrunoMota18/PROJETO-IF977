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
  click_on('Send me reset password instructions')
end

Quando("Eu aperto no registrar") do
   #visit('/users/sign_up')
end

Quando("Eu escolho o que sou  entre Médico e Enfermeiro, sou Médico") do
 #  choose('medico')
end

Quando("Eu escolho o que sou  entre Médico e Enfermeiro, sou Enfermeiro") do
  # choose('enfermeiro')
end

Quando("Eu preencho meus dados corretamente") do
#  fill_in('Email', :with => 'teste@gmail.com')
#  fill_in('Password', :with => 'senha1')
#  fill_in('Password confirmation', :with => 'senha1')
#  fill_in('Cpf', :with => '123456789-58')
end

Quando("Eu esqueço meu CRM") do
#  fill_in('Email', :with => 'teste@gmail.com')
#  fill_in('Password', :with => 'senha1')
#  fill_in('Password confirmation', :with => 'senha1')
#  fill_in('Cpf', :with => '123456789-58')
#  fill_in('Crm', :with => '')
end

Quando("Eu esqueço meu COREN") do
  #fill_in('Email', :with => 'teste@gmail.com')
  #fill_in('Password', :with => 'senha1')
  #fill_in('Password confirmation', :with => 'senha1')
  #fill_in('Cpf', :with => '123456789-58')
  #fill_in('Coren', :with => '')
end

Quando("Eu aperto no - na janela visitas") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Eu aperto no + na janela visitas") do
  pending # Write code here that turns the phrase above into concrete actions
end