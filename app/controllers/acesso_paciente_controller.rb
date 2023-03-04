class AcessoPacienteController < ApplicationController

  def new
  end

  def create
    @paciente= Paciente.find_by(cpf: params[:cpf])
    if @paciente.present?
      session[:paciente_id] = @paciente.id
      render :'acesso_paciente/index'
      #redirect_to pacientes_url, notice: "logado com sucesso"
    else
      flash[:alert]= "CPF não cadastrado"
      render :'acesso_paciente/new'
    end
  end

  def destroy
    session[:paciente_id] = nil
    redirect_to root_path, notice: "desconectado com sucesso"
  end
end