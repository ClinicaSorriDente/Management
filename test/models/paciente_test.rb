require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "Criar conta de paciente sem atributos" do
    paciente = Paciente.new
    assert_not paciente.save
  end

  test 'Criar conta de paciente com cpf inexistente' do
      paciente = Paciente.new nome: 'Gison Vilaca',
                              nascimento: "2001-04-25",
                              cpf: '135.469.494-56', # o existente termina com 5
                              telefone: '01234567890',
                              email: 'gison@gmail.com',
                              endereco_paciente_attributes:{
                              cep: '55435000',
                              cidade: 'Sao Joao',
                              bairro: 'Parque Alvorada',
                              logradouro: 'Rua do Educandario',
                              complemento: 'Proximo ao educandario.'
                            }
      assert_not paciente.save
  end

  test "Criar conta de paciente com todos os atributos validos" do
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
  end
end
