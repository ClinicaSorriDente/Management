require "application_system_test_case"

class RelatorioConsultaTest < ApplicationSystemTestCase
  setup do
    @relatorio_consultum = relatorio_consulta(:one)
  end

  test "visiting the index" do
    visit relatorio_consulta_url
    assert_selector "h1", text: "Relatorio consulta"
  end

  test "should create relatorio consultum" do
    visit relatorio_consulta_url
    click_on "New relatorio consultum"

    fill_in "Consulta", with: @relatorio_consultum.consulta_id
    check "Presente" if @relatorio_consultum.presente
    click_on "Create Relatorio consultum"

    assert_text "Relatorio consultum was successfully created"
    click_on "Back"
  end

  test "should update Relatorio consultum" do
    visit relatorio_consultum_url(@relatorio_consultum)
    click_on "Edit this relatorio consultum", match: :first

    fill_in "Consulta", with: @relatorio_consultum.consulta_id
    check "Presente" if @relatorio_consultum.presente
    click_on "Update Relatorio consultum"

    assert_text "Relatorio consultum was successfully updated"
    click_on "Back"
  end

  test "should destroy Relatorio consultum" do
    visit relatorio_consultum_url(@relatorio_consultum)
    click_on "Destroy this relatorio consultum", match: :first

    assert_text "Relatorio consultum was successfully destroyed"
  end
end
