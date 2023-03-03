class Paciente < ApplicationRecord
  validates :nome, length: { minimum: 4 }, presence: true
  validates :nascimento, presence: true
  validates :cpf, cpf: { message: 'Inválido ou Inexistente' }, presence: true, uniqueness: true
  validates :telefone, length: { minimum: 11 }, numericality: { only_integer: true }, presence: true
  validates :email, length: { minimum: 11 }
  validates :endereco, length: { minimum: 6 }, presence: true

  validate :conferindo_data
  def conferindo_data
    if nascimento.present? && nascimento > Time.zone.today
      errors.add(:dataNascimento, 'Data inválida')
    end
  end
end