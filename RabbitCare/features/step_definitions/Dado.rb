
Dado("Eu navego para pagina de Login") do
  visit ('/users/sign_in') 
end

Dado("Eu coloco no Login") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.raw
end

Dado("Eu clico no ícone do Facebook") do
  click_on ('/users/auth/facebook')
end

Dado("Eu sou redirecionado para o Logar com o Facebook") do
  visit ('/users/auth/facebook')
end

Dado("Eu conecto ao meu Facebook") do
  "sign_in_and_redirect @user, event: :authentication"
end

Dado("Eu navego para pagina de inicial") do
  "/users/sign_up"
end


