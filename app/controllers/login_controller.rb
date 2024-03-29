class LoginController < ApplicationController

    def new
    end

    def create
        @admin= Admin.find_by(usuario: params[:usuario])
        validar_admin(@admin)
    end

    def destroy
        session[:admin_id] = nil
        flash[:success]= "desconectado com sucesso"
        redirect_to root_path

    end

    def validar_admin(admin)
        if admin.present? && admin.authenticate(params[:senha])
            session[:admin_id] = admin.id
            flash[:success]= "logado com sucesso"
            render :'admin/index'
        else
            flash[:alert]= "Email ou senha invalida"
            render :'login/new'
        end
    end

end