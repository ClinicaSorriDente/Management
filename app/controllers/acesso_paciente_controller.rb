class AcessoPacienteController < ApplicationController

  def new
  end

  def create
    @paciente= Paciente.find_by(cpf: params[:cpf])
    validar_paciente
  end

  def destroy
    session[:paciente_id] = nil
    flash[:success]= "desconectado com sucesso"
    redirect_to root_path
  end

  def validar_paciente
    if @paciente.present?
      session[:paciente_id] = @paciente.id
      flash[:success]= "logado com sucesso"
      render :'acesso_paciente/index'

    else
      flash[:alert]= "CPF não cadastrado"
      render :'acesso_paciente/new'
    end
  end
end