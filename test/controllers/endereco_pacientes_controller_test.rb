require "test_helper"

class EnderecoPacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endereco_paciente = endereco_pacientes(:one)
  end

  test "should get index" do
    get endereco_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_endereco_paciente_url
    assert_response :success
  end

  test "should create endereco_paciente" do
    assert_difference("EnderecoPaciente.count") do
      post endereco_pacientes_url, params: { endereco_paciente: { bairro: @endereco_paciente.bairro, cep: @endereco_paciente.cep, cidade: @endereco_paciente.cidade, complemento: @endereco_paciente.complemento, logradouro: @endereco_paciente.logradouro } }
    end

    assert_redirected_to endereco_paciente_url(EnderecoPaciente.last)
  end

  test "should show endereco_paciente" do
    get endereco_paciente_url(@endereco_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_endereco_paciente_url(@endereco_paciente)
    assert_response :success
  end

  test "should update endereco_paciente" do
    patch endereco_paciente_url(@endereco_paciente), params: { endereco_paciente: { bairro: @endereco_paciente.bairro, cep: @endereco_paciente.cep, cidade: @endereco_paciente.cidade, complemento: @endereco_paciente.complemento, logradouro: @endereco_paciente.logradouro } }
    assert_redirected_to endereco_paciente_url(@endereco_paciente)
  end

  test "should destroy endereco_paciente" do
    assert_difference("EnderecoPaciente.count", -1) do
      delete endereco_paciente_url(@endereco_paciente)
    end

    assert_redirected_to endereco_pacientes_url
  end
end
