class DentistaController < ApplicationController
  before_action :set_dentistum, only: %i[ show edit update destroy ]

  # GET /dentista or /dentista.json
  def index
    @dentista = Dentistum.all
  end

  # GET /dentista/1 or /dentista/1.json
  def show
  end

  # GET /dentista/new
  def new
    @dentistum = Dentistum.new
    @dentistum.build_admin
  end

  # GET /dentista/1/edit
  def edit
  end

  # POST /dentista or /dentista.json
  def create
    @admin = Admin.find(params[:admin_id])
    @dentistum = @admin.dentistums.create(dentistum_params)

      if @dentistum.save
        redirect_to admin_dentista_path, notice: "Dentista foi Criado com sucesso"

      else
        render :'dentista/new', status: :unprocessable_entity


      end
  end

  # PATCH/PUT /dentista/1 or /dentista/1.json
  def update
      if @dentistum.update(dentistum_params)
        redirect_to admin_dentista_path, notice: "Dentista foi atualizado mcom sucesso"

      else
        render :'dentista/edit', status: :unprocessable_entity

      end

  end

  # DELETE /dentista/1 or /dentista/1.json
  def destroy
    @dentistum.destroy
    redirect_to admin_dentista_path, notice: "Dentista excluido com sucesso"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dentistum
      @dentistum = Dentistum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dentistum_params
      params.require(:dentistum).permit(:nome, :telefone, :CRO, :CPF, :especializacao, :data, :horaInicio, :horaTermino)
    end
end
