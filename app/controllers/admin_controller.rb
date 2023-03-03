class AdminController < ApplicationController
  before_action :set_admin, only: %i[destroy]

  def index

  end

  def set_admin
    @admin = Admin.find(params[:id])
  end


  def destroy
    if @admin.usuario == 'Admin_padrao'
      flash[:alert]= "Este Admin não pode ser excluido"
      render :'admin/index'
    else
      @admin.destroy
      redirect_to root_path, notice: "Admin foi excluido com sucesso"
    end

  end
end