require "test_helper"

class RelatorioConsultumTest < ActiveSupport::TestCase
  test "salvar relatorio_consulta com campos vazios" do
    relatorio_consulta = RelatorioConsultum.new
    assert_not relatorio_consulta.save
  end

  test "salvar relatorio_consulta sem consulta_id" do
    relatorio_consulta = RelatorioConsultum.new presente:true , comentario: "paciente com febre"
    assert_not relatorio_consulta.save
  end

  test "salvar relatorio_consulta corretamente" do
    paciente = Paciente.new nome: 'Gison Vilaca',
                            nascimento: "2001-04-25",
                            cpf: '135.469.494-55',
                            telefone: '01234567890',
                            email: 'gison@gmail.com',
                            endereco_paciente_attributes:{
                              cep: '55435000',
                              cidade: 'Sao Joao',
                              bairro: 'Parque Alvorada',
                              logradouro: 'Rua do Educandario',
                              complemento: 'Proximo ao educandario.'
                            }
    assert paciente.save

    dentista = Dentistum.new(
      nome:"Dr Pedro Araujo",
      telefone:"87998115631",
      CRO:"123456789",
      CPF:"01384477721",
      especializacao:"Dentista",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
    )
    assert dentista.save

    consulta = Consultum.new(data:"23/10/2023", horario:"12:00", paciente_id:paciente.id, dentistum_id:dentista.id)
    assert consulta.save

    relatorio_consulta = RelatorioConsultum.new presente:true , comentario: "paciente com febre",consultum_id: consulta.id
    assert relatorio_consulta.save
  end
end
