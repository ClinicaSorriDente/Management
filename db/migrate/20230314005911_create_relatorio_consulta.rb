class CreateRelatorioConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :relatorio_consulta do |t|
      t.integer :consulta_id
      t.boolean :presente

      t.timestamps
    end
  end
end
