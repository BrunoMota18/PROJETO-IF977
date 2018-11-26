require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with nome, telefone, cpf, email and crm' do
    user = build(:user)
    expect(user).to be_valid
  end
  it 'is invalid without email' do
    user = build(:user, :email == nil)
    user.valid?
    expect(user.errors[:email]).to include()
  end
  it 'is invalid without nome' do
    user = build(:user, :nome == nil)
    user.valid?
    expect(user.errors[:nome]).to include()
  end
  it 'is invalid without cpf' do
    user = build(:user, :cpf == nil)
    user.valid?                            
    expect(user.errors[:cpf]).to include()
  end
  it 'is invalid without telefone' do
    user = build(:user, :telefone == nil)
    user.valid?
    expect(user.errors[:telefone]).to include()
  end
end
