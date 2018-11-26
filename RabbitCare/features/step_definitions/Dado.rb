Dado("Eu estou na tela inicial") do
  visit('/users/*')
end

Dado('Eu navego para pagina de Login') do
  visit('/users/sign_in')
end

Dado("Eu coloco no Login") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.raw
end

Dado("Eu sou redirecionado para o Logar com o Facebook") do
  visit('/resource/auth/facebook')
end

Dado("Eu navego para pagina inicial") do
  visit('/users/sign_in')
end
