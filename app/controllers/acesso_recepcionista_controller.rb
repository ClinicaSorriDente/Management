class AcessoRecepcionistaController < ApplicationController

  def new
  end

  def create
    @recepcionistum=  Recepcionistum.find_by(credencial: params[:credencial])
    if @recepcionistum.present?
      session[:recepcionistum_id] = @recepcionistum.id
      render :'acesso_recepcionista/index'
      #redirect_to pacientes_url, notice: "logado com sucesso"
    else
      flash[:alert]= "Credencial não cadastrada"
      render :'acesso_recepcionista/new'
    end
  end

  def destroy
    session[:recepcionistum_id] = nil
    redirect_to root_path, notice: "desconectado com sucesso"
  end
end