class Recepcionistum < ApplicationRecord
  validates :nome, length: { minimum: 4 }, presence: true
  validates :credencial, length: { minimum: 3 }, numericality: { only_integer: true }, presence: true
  validates :cpf, cpf: { message: 'Inválido ou Inexistente' }, presence: true, uniqueness: true
  validates :telefone, length: { minimum: 11 }, numericality: { only_integer: true }, presence: true
  validates :email, length: { minimum: 11 }
end
