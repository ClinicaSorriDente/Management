class RelatorioConsultum < ApplicationRecord
  
  validates :comentario, length: {in: 5..100},presence:true
end
