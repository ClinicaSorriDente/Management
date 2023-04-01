class AcessoRecepcionistaController < ApplicationController

  def new
  end

  def create
    @recepcionistum=  Recepcionistum.find_by(credencial: params[:credencial])
    if @recepcionistum.present?
      session[:recepcionistum_id] = @recepcionistum.id
      flash[:success]= "logado com sucesso"
      render 'acesso_recepcionista/index'
    else
      flash[:alert]= "Credencial não cadastrada"
      render :'acesso_recepcionista/new'
    end
  end

  def destroy
    session[:recepcionistum_id] = nil
    flash[:success]="desconectado com sucesso"
    redirect_to root_path

  end
end