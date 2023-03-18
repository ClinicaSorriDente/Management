class AddConsultumToRelatorioConsultum < ActiveRecord::Migration[7.0]
  def change
    add_reference :relatorio_consulta, :consultum, null: false, foreign_key: true
  end
end
