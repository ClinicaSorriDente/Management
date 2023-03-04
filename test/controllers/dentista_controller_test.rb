require "test_helper"

class DentistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dentistum = dentista(:one)
  end

  test "should get index" do
    get dentista_url
    assert_response :success
  end

  test "should get new" do
    get new_dentistum_url
    assert_response :success
  end

  test "should create dentistum" do
    assert_difference("Dentistum.count") do
      post dentista_url, params: { dentistum: { CPF: @dentistum.CPF, CRO: @dentistum.CRO, data: @dentistum.data, especializacao: @dentistum.especializacao, horaInicio: @dentistum.horaInicio, horaTermino: @dentistum.horaTermino, nome: @dentistum.nome, telefone: @dentistum.telefone } }
    end

    assert_redirected_to dentistum_url(Dentistum.last)
  end

  test "should show dentistum" do
    get dentistum_url(@dentistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_dentistum_url(@dentistum)
    assert_response :success
  end

  test "should update dentistum" do
    patch dentistum_url(@dentistum), params: { dentistum: { CPF: @dentistum.CPF, CRO: @dentistum.CRO, data: @dentistum.data, especializacao: @dentistum.especializacao, horaInicio: @dentistum.horaInicio, horaTermino: @dentistum.horaTermino, nome: @dentistum.nome, telefone: @dentistum.telefone } }
    assert_redirected_to dentistum_url(@dentistum)
  end

  test "should destroy dentistum" do
    assert_difference("Dentistum.count", -1) do
      delete dentistum_url(@dentistum)
    end

    assert_redirected_to dentista_url
  end
end
