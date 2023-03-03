class LoginController < ApplicationController

    def new
    end

    def create
        @admin= Admin.find_by(usuario: params[:usuario])
        if @admin.present? && @admin.authenticate(params[:senha])
            session[:admin_id] = @admin.id
            render :'admin/index'
            #redirect_to admin_index_path, notice: "logado com sucesso"
        else
            flash[:alert]= "Email ou senha invalida"
            render :'login/new'
            end
    end

    def destroy
        session[:admin_id] = nil
        redirect_to root_path, notice:  "desconectado com sucesso"
    end

end