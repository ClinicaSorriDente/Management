# frozen_string_literal: true

class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[show edit update destroy]

  # GET /consulta or /consulta.json
  def index
    @consulta = Consultum.all
  end

  # GET /consulta/1 or /consulta/1.json
  def show; end

  # GET /consulta/new
  def new
    @consultum = Consultum.new
    @consultas_all = Consultum.where(data: params[:data_inicial]..params[:data_final]).order(:data)
  end

  # GET /consulta/1/edit
  def edit; end

  # POST /consulta or /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)
    buscar_paciente_medico

      if @consultum.save
        flash[:success]='Consulta foi criada com sucesso.'
        redirect_to "/consulta/#{@consultum.id}"
      else
        flash[:alert] = 'verifique seus campos'
        redirect_to new_consultum_path
      end
  end

  # PATCH/PUT /consulta/1 or /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { flash[:success]='Consulta foi atualizada com sucesso'
        redirect_to consultum_url(@consultum)
        }
        format.json { render :show, status: :ok, location: @consultum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1 or /consulta/1.json
  def destroy
    @consultum.destroy

    respond_to do |format|
      format.html { flash[:success]='Consulta doi destruida com sucesso'
        redirect_to consulta_url}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consultum
      @consultum = Consultum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def consultum_params
    params.require(:consultum).permit(:data, :horario, :paciente_id, :dentistum_id)
  end

  def buscar_paciente_medico
    if consultum_params[:paciente_id].present? and consultum_params[:dentistum_id].present?
      @paciente = Paciente.find(consultum_params[:paciente_id])
      @dentista = Dentistum.find(consultum_params[:dentistum_id])
      @paciente.consultums << @consultum
      @dentista.consultums << @consultum
    end
  end
end
