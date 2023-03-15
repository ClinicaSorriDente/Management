require "application_system_test_case"

class RecepcionistaTest < ApplicationSystemTestCase
  setup do
    @recepcionistum = recepcionista(:one)
  end

  test "visiting the index" do
    visit recepcionista_url
    assert_selector "h1", text: "Recepcionista"
  end

  test "should create recepcionistum" do
    visit recepcionista_url
    click_on "New recepcionistum"

    fill_in "Cpf", with: @recepcionistum.cpf
    fill_in "Credencial", with: @recepcionistum.credencial
    fill_in "Email", with: @recepcionistum.email
    fill_in "Nome", with: @recepcionistum.nome
    fill_in "Telefone", with: @recepcionistum.telefone
    click_on "Create Recepcionistum"

    assert_text "Recepcionistum was successfully created"
    click_on "Back"
  end

  test "should update Recepcionistum" do
    visit recepcionistum_url(@recepcionistum)
    click_on "Edit this recepcionistum", match: :first

    fill_in "Cpf", with: @recepcionistum.cpf
    fill_in "Credencial", with: @recepcionistum.credencial
    fill_in "Email", with: @recepcionistum.email
    fill_in "Nome", with: @recepcionistum.nome
    fill_in "Telefone", with: @recepcionistum.telefone
    click_on "Update Recepcionistum"

    assert_text "Recepcionistum was successfully updated"
    click_on "Back"
  end

  test "should destroy Recepcionistum" do
    visit recepcionistum_url(@recepcionistum)
    click_on "Destroy this recepcionistum", match: :first

    assert_text "Recepcionistum was successfully destroyed"
  end
end
