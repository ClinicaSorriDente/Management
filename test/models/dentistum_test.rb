require "test_helper"

class DentistumTest < ActiveSupport::TestCase
  test "Criar Dentista correto" do

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
  end

  test "Criar Dentista com CPF inválido" do

    dentista = Dentistum.new(
      nome:"Rogerio Lacerda",
      telefone:"87912345678",
      CRO:"123456789",
      CPF:"0138447772AA",
      especializacao:"Endodontia",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
    )
    assert_not dentista.save
  end

  test "Criar Dentista com CRO inválido" do

    dentista = Dentistum.new(
      nome:"Rogerio Lacerda",
      telefone:"87912345678",
      CRO:"ABCDEF",
      CPF:"01384477721",
      especializacao:"Endodontia",
      data:"2021-10-05",
      horaInicio:"08:00",
      horaTermino:"16:00",
    )
    assert_not dentista.save
  end

end