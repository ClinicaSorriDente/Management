class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :nascimento
      t.string :cpf
      t.string :email
      t.text :endereco

      t.timestamps
    end
  end
end
