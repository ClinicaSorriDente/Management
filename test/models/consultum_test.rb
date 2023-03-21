require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "Cria Consulta " do

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

    admin = Admin.new usuario:'Ricardo', password:'12345', password_confirmation:'12345'
    assert admin.save

    dentista = Dentistum.new(
      nome:"Rogerio Lacerda",
      telefone:"87912345678",
      CRO:"123456789",
      CPF:"01384477721",
      especializacao:"Endodontia",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
      )
    assert dentista.save

    consulta = Consultum.new(data:"23/10/2023", horario:"12:00", paciente_id:paciente.id, dentistum_id:dentista.id)
    assert consulta.save
  end
  test "Cria Consulta horario invalido" do

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

    admin = Admin.new usuario:'Ricardo', password:'12345', password_confirmation:'12345'
    assert admin.save

    dentista = Dentistum.new(
      nome:"Rogerio Lacerda",
      telefone:"87912345678",
      CRO:"123456789",
      CPF:"01384477721",
      especializacao:"Endodontia",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
      )
    assert dentista.save

    consulta = Consultum.new(data:"23/10/2023", horario:"7:00", paciente_id:paciente.id, dentistum_id:dentista.id)
    assert_not consulta.save
  end
  test "Editar Consulta" do

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

    admin = Admin.new usuario:'Ricardo', password:'12345', password_confirmation:'12345'
    assert admin.save

    dentista = Dentistum.new(
      nome:"Rogerio Lacerda",
      telefone:"87912345678",
      CRO:"123456789",
      CPF:"01384477721",
      especializacao:"Endodontia",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
      )
    assert dentista.save

    consulta = Consultum.new(data:"23/10/2023", horario:"10:00", paciente_id:paciente.id, dentistum_id:dentista.id)
    consulta.save
    assert consulta.update(horario:"12:00")
  end

end
