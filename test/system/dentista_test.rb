require "application_system_test_case"

class DentistaTest < ApplicationSystemTestCase
  setup do
    @dentistum = dentista(:one)
  end

  test "visiting the index" do
    visit dentista_url
    assert_selector "h1", text: "Dentista"
  end

  test "should create dentistum" do
    visit dentista_url
    click_on "New dentistum"

    fill_in "Cpf", with: @dentistum.CPF
    fill_in "Cro", with: @dentistum.CRO
    fill_in "Data", with: @dentistum.data
    fill_in "Especializacao", with: @dentistum.especializacao
    fill_in "Horainicio", with: @dentistum.horaInicio
    fill_in "Horatermino", with: @dentistum.horaTermino
    fill_in "Nome", with: @dentistum.nome
    fill_in "Telefone", with: @dentistum.telefone
    click_on "Create Dentistum"

    assert_text "Dentistum was successfully created"
    click_on "Back"
  end

  test "should update Dentistum" do
    visit dentistum_url(@dentistum)
    click_on "Edit this dentistum", match: :first

    fill_in "Cpf", with: @dentistum.CPF
    fill_in "Cro", with: @dentistum.CRO
    fill_in "Data", with: @dentistum.data
    fill_in "Especializacao", with: @dentistum.especializacao
    fill_in "Horainicio", with: @dentistum.horaInicio
    fill_in "Horatermino", with: @dentistum.horaTermino
    fill_in "Nome", with: @dentistum.nome
    fill_in "Telefone", with: @dentistum.telefone
    click_on "Update Dentistum"

    assert_text "Dentistum was successfully updated"
    click_on "Back"
  end

  test "should destroy Dentistum" do
    visit dentistum_url(@dentistum)
    click_on "Destroy this dentistum", match: :first

    assert_text "Dentistum was successfully destroyed"
  end
end
