require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with nome, telefone, cpf, email and crm' do
    user = build(:user)
    expect(user).to be_valid
  end
  it 'is invalid without telefone' do
    user = build(:user, :email = nil)
    user.valid?
    expect(user.erros[:email]).to include("can't be blank")
  end
  it 'is invalid without nome' do
    user = build(:user, :nome = nil)
    user.valid?
    expect(user.erros[:nome]).to include("can't be blank")
  end
  it 'is invalid without cpf' do
    user = build(:user, :cpf = nil)
    user.valid?
    expect(user.erros[:cpf]).to include("can't be blank")
  end
  it 'is invalid without telefone' do
    user = build(:user, :telefone = nil)
    user.valid?
    expect(user.erros[:telefone]).to include("can't be blank")
  end
end
