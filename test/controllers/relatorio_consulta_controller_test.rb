require "test_helper"

class RelatorioConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_consultum = relatorio_consulta(:one)
  end

  test "should get index" do
    get relatorio_consulta_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_consultum_url
    assert_response :success
  end

  test "should create relatorio_consultum" do
    assert_difference("RelatorioConsultum.count") do
      post relatorio_consulta_url, params: { relatorio_consultum: { consulta_id: @relatorio_consultum.consulta_id, presente: @relatorio_consultum.presente } }
    end

    assert_redirected_to relatorio_consultum_url(RelatorioConsultum.last)
  end

  test "should show relatorio_consultum" do
    get relatorio_consultum_url(@relatorio_consultum)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_consultum_url(@relatorio_consultum)
    assert_response :success
  end

  test "should update relatorio_consultum" do
    patch relatorio_consultum_url(@relatorio_consultum), params: { relatorio_consultum: { consulta_id: @relatorio_consultum.consulta_id, presente: @relatorio_consultum.presente } }
    assert_redirected_to relatorio_consultum_url(@relatorio_consultum)
  end

  test "should destroy relatorio_consultum" do
    assert_difference("RelatorioConsultum.count", -1) do
      delete relatorio_consultum_url(@relatorio_consultum)
    end

    assert_redirected_to relatorio_consulta_url
  end
end
