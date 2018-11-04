class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :omniauthable

  validates :nome, presence: true
  validates :nome, length: {in: 2..50}
  validates :cpf, presence: true
  validates :cpf, uniqueness: true, if: -> {self.cpf.present?}
  validates :cpf, length: {is: 11}, if: -> {self.cpf.present?}
  validates :cpf, numericality: true, if: -> {self.cpf.present?}
  validates :coren, presence: true, if: -> {self.tipo.eql? "enfermeiro"}
  validates :coren, uniqueness: true, if: -> {self.coren.present?}
  validates :coren, length: {is: 15}, if: -> {self.coren.present?}
  validates :coren, numericality: true, if: -> {self.coren.present?}
  validates :crm, presence: true, if: -> {self.tipo.eql? "medico"}
  validates :crm, uniqueness: true, if: -> {self.crm.present?}
  validates :crm, length: {is: 8}, if: -> {self.crm.present?}
  validates :crm, numericality: true, if: -> {self.crm.present?}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
end
