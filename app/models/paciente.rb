class Paciente < ApplicationRecord
  validates :nome, length: { minimum: 4 }, presence: true
  validates :nascimento, presence: true
  validates :cpf, cpf: { message: 'Inválido' }
  validates :email, length: { minimum: 11 }, presence: true, uniqueness: true
  validates :endereco, length: { minimum: 6 }, presence: true, uniqueness: true

  validate :conferindoData
  def conferindoData
    if nascimento.present? && nascimento > Date.today
      errors.add(:dataNascimento, 'Data inválida')
    end
  end
end