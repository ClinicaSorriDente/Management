require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "should create paciente" do
    visit pacientes_url
    click_on "New paciente"

    fill_in "Cpf", with: @paciente.cpf
    fill_in "Email", with: @paciente.email
    fill_in "Endereco", with: @paciente.endereco
    fill_in "Nascimento", with: @paciente.nascimento
    fill_in "Nome", with: @paciente.nome
    fill_in "Telefone", with: @paciente.telefone
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "should update Paciente" do
    visit paciente_url(@paciente)
    click_on "Edit this paciente", match: :first

    fill_in "Cpf", with: @paciente.cpf
    fill_in "Email", with: @paciente.email
    fill_in "Endereco", with: @paciente.endereco
    fill_in "Nascimento", with: @paciente.nascimento
    fill_in "Nome", with: @paciente.nome
    fill_in "Telefone", with: @paciente.telefone
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Paciente" do
    visit paciente_url(@paciente)
    click_on "Destroy this paciente", match: :first

    assert_text "Paciente was successfully destroyed"
  end
end
