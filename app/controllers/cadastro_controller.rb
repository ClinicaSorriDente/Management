class CadastroController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      render :'admin/index'
    else
      render :'cadastro/new'
    end
  end
  def admin_params
    params.require(:admin).permit(:usuario, :password, :password_confirmation)
  end
end
