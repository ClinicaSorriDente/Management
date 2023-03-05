class EnderecoPaciente < ApplicationRecord
  belongs_to :paciente
  validates :cep, numericality: { only_integer: true }, presence: true, length: { is: 8 }
  validates :cidade, presence: true, length: { minimum: 3 }
  validates :bairro, presence: true, length: { in: 3..30 }
  validates :logradouro, presence: true, length: { in: 3..40 }
  validates :complemento, presence: true, length: { in: 3..100 }
end
