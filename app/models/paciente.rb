class Paciente < ApplicationRecord
  has_one :endereco_paciente, dependent: :destroy
  has_many :consultums, dependent: :destroy
  has_many :medicos, through: :consultums
  accepts_nested_attributes_for :endereco_paciente, allow_destroy: true
  validates :nome, length: { minimum: 4 }, presence: true
  validates :nascimento, presence: true
  validates :cpf, cpf: { message: 'Inválido ou Inexistente' }, uniqueness: true, presence: true
  validates :telefone, length: { minimum: 11 }, numericality: { only_integer: true }, presence: true
  validates :email, length: { minimum: 11 }

  validate :validar_data_nascimento
  def validar_data_nascimento
    if nascimento.present? && nascimento > Time.zone.today
      errors.add(:dataNascimento, 'Data inválida')
    end
  end
end