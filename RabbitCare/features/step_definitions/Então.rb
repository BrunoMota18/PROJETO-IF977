Então("Eu vou para tela de recuperação de senha") do
  "visit /users/password/new"
end

Então("Eu coloco o meu email no campo email") do
  "fill_in email, with=> email@email"
end

Então("Eu recebo um código por email") do
  "recebo o codigo?????"
end

Então("Eu coloco o código no campo código") do
  "fill in código, with=> |código|"
end

Então("Eu coloco minha nova senha") do
  fill_in password, with => @String
end

Então("Eu repito minha nova senha no outro campo senha") do
  "fill_in password_confirmation, with => @String"
end

Então("Eu recebo uma mensagem dizendo que a senha foi alterada e volto para tela inicial") do
  "não sei fazer esse"
end

Então("Eu recebo um alerta Quando email não é válido") do
  "redirect_to root_path"
end

Então("Eu coloco uma senha diferente da que coloquei no outro campo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu recebo um alerta mostrE o que as senhas são diferentes") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu coloco um código diferente do código recebido no campo código") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu recebo um alerta dizendo Quando código não é valido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu recebo uma alerta dizendo Quando código não é valido e senhas são diferentes.") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo ver a tela inicial") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo ficar na tela do Facebook até a fechar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo ver um alerta de senha errada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu devo ver um alerta de email inexistente") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu escolho o que sou entre") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu sou redirecionado para a página de seleção de usuário") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu escolho o que sou  entre") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu vejo uma mensagem avisando para preencher o CRM") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu vejo uma mensagem avisando para preencher o CPF") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu vejo uma mensagem avisando para preencher o COREN") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu vejo uma mensagem avisando para preencher o CNPJ") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("Eu aperto em registrar") do
  "/users/sign_up"
end