FactoryBot.define do
  factory :user do
    nome { Faker::FunnyName }
    cpf { Faker::Number.number(11) }
    telefone { Faker::PhoneNumber }
    email { Faker::Internet.email }
    password { '123456' }
    password_confirmation { '123456' }
        
  end
end
