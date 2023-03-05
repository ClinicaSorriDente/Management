class AddPacienteToEnderecoPaciente < ActiveRecord::Migration[7.0]
  def change
    add_reference :endereco_pacientes, :paciente, null: false, foreign_key: true
  end
end
