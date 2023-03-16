class CreateRelatorioConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :relatorio_consulta do |t|
      t.boolean :presente
      t.text :comentario

      t.timestamps
    end
  end
end
