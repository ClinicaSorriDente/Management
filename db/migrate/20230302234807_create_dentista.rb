class CreateDentista < ActiveRecord::Migration[7.0]
  def change
    create_table :dentista do |t|
      t.string :nome
      t.string :telefone
      t.string :CRO
      t.string :CPF
      t.string :especializacao
      t.date :data
      t.time :horaInicio
      t.time :horaTermino

      t.timestamps
    end
  end
end
