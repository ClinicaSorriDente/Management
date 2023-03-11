class Dentistum < ApplicationRecord
  has_many :pacientes, through: :consultums
  has_many :consultums, dependent: :destroy
  validates :nome, presence: true, length:{ minimum: 2, maximum: 30}
  validates :CRO, presence: true, length: { minimum: 9, maximum: 9}
  validates :telefone,:presence => true, :numericality => true, :length => { :minimum => 11, :maximum => 11 }
  validates :especializacao, presence: true, length: { minimum: 2, maximum: 30}
  validates :CPF, cpf: { message: 'Inválido ou Inexistente' }, presence: true, uniqueness: true

end
