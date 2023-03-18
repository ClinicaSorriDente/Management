class RelatorioConsultum < ApplicationRecord
  belongs_to :consultum
  validates :comentario, length: {in: 5..100}, presence:true
end
