require "test_helper"

class RecepcionistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recepcionistum = recepcionista(:one)
  end

  test "should get index" do
    get recepcionista_url
    assert_response :success
  end

  test "should get new" do
    get new_recepcionistum_url
    assert_response :success
  end

  test "should create recepcionistum" do
    assert_difference("Recepcionistum.count") do
      post recepcionista_url, params: { recepcionistum: { cpf: @recepcionistum.cpf, credencial: @recepcionistum.credencial, email: @recepcionistum.email, nome: @recepcionistum.nome, telefone: @recepcionistum.telefone } }
    end

    assert_redirected_to recepcionistum_url(Recepcionistum.last)
  end

  test "should show recepcionistum" do
    get recepcionistum_url(@recepcionistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_recepcionistum_url(@recepcionistum)
    assert_response :success
  end

  test "should update recepcionistum" do
    patch recepcionistum_url(@recepcionistum), params: { recepcionistum: { cpf: @recepcionistum.cpf, credencial: @recepcionistum.credencial, email: @recepcionistum.email, nome: @recepcionistum.nome, telefone: @recepcionistum.telefone } }
    assert_redirected_to recepcionistum_url(@recepcionistum)
  end

  test "should destroy recepcionistum" do
    assert_difference("Recepcionistum.count", -1) do
      delete recepcionistum_url(@recepcionistum)
    end

    assert_redirected_to recepcionista_url
  end
end
