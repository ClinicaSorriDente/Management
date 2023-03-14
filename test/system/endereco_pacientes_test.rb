require "application_system_test_case"

class EnderecoPacientesTest < ApplicationSystemTestCase
  setup do
    @endereco_paciente = endereco_pacientes(:one)
  end

  test "visiting the index" do
    visit endereco_pacientes_url
    assert_selector "h1", text: "Endereco pacientes"
  end

  test "should create endereco paciente" do
    visit endereco_pacientes_url
    click_on "New endereco paciente"

    fill_in "Bairro", with: @endereco_paciente.bairro
    fill_in "Cep", with: @endereco_paciente.cep
    fill_in "Cidade", with: @endereco_paciente.cidade
    fill_in "Complemento", with: @endereco_paciente.complemento
    fill_in "Logradouro", with: @endereco_paciente.logradouro
    click_on "Create Endereco paciente"

    assert_text "Endereco paciente was successfully created"
    click_on "Back"
  end

  test "should update Endereco paciente" do
    visit endereco_paciente_url(@endereco_paciente)
    click_on "Edit this endereco paciente", match: :first

    fill_in "Bairro", with: @endereco_paciente.bairro
    fill_in "Cep", with: @endereco_paciente.cep
    fill_in "Cidade", with: @endereco_paciente.cidade
    fill_in "Complemento", with: @endereco_paciente.complemento
    fill_in "Logradouro", with: @endereco_paciente.logradouro
    click_on "Update Endereco paciente"

    assert_text "Endereco paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Endereco paciente" do
    visit endereco_paciente_url(@endereco_paciente)
    click_on "Destroy this endereco paciente", match: :first

    assert_text "Endereco paciente was successfully destroyed"
  end
end
