require "test_helper"

class RecepcionistumTest < ActiveSupport::TestCase
  test "Criar conta de recepcionista sem atributos" do
    recepcionistum = Recepcionistum.new
    assert_not recepcionistum.save
  end

  test 'Criar conta de recepcionista com cpf inexistente' do
    recepcionistum = Recepcionistum.new nome: 'Gison Morais',
                                        credencial: '611',
                                        cpf: '135.469.494-56', # o existente termina com 5
                                        telefone: '09876543210',
                                        email: 'morais@gmail.com'
    assert_not recepcionistum.save
  end

  test "Criar conta de recepcionista com todos os atributos validos" do
    recepcionistum = Recepcionistum.new nome: 'Gison Morais',
                                        credencial: '611',
                                        cpf: '135.469.494-55',
                                        telefone: '09876543210',
                                        email: 'morais@gmail.com'
    assert recepcionistum.save
  end
end
