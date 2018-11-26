require 'rails_helper'

RSpec.describe Medico, type: :model do
  it 'is valid with nome, telefone, cpf, email and crm' do
    medico = build(:medico)
    expect(medico).to be_valid
  end
  it 'is invalid without email' do
    medico = build(:medico, :email = nil)
    medico.valid?
    expect(medico.erros[:email]).to include("can't be blank")
  end
  it 'is invalid without crm' do
    medico = build(:medico, :crm = nil)
    medico.valid?
    expect(medico.erros[:crm]).to include("can't be blank")
  end
  it 'is invalid without nome' do
    medico = build(:medico, :nome = nil)
    medico.valid?
    expect(medico.erros[:nome]).to include("can't be blank")
  end
  it 'is invalid without cpf' do
    medico = build(:medico, :cpf = nil)
    medico.valid?
    expect(medico.erros[:cpf]).to include("can't be blank")
  end
  it 'is invalid without telefone' do
    medico = build(:medico, :telefone = nil)
    medico.valid?
    expect(medico.erros[:telefone]).to include("can't be blank")
  end
end
