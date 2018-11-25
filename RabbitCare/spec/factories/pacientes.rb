FactoryBot.define do
  factory :paciente do
    medico_crm { "MyString" }
    enfermeiro_coren { "MyString" }
    cpf_responsavel { "MyString" }
    user { nil }
  end
end
