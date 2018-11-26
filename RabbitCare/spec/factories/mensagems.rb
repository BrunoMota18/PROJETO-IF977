FactoryBot.define do
  factory :mensagem do
    conteudo { "MyText" }
    conversa { nil }
    user { nil }
  end
end
