class RelatorioConsultaController < ApplicationController
  before_action :set_relatorio_consultum, only: %i[ show edit update destroy ]

  # GET /relatorio_consulta or /relatorio_consulta.json
  def index
    @relatorio_consulta = RelatorioConsultum.all
  end

  # GET /relatorio_consulta/1 or /relatorio_consulta/1.json
  def show
  end

  # GET /relatorio_consulta/new
  def new
    @relatorio_consultum = RelatorioConsultum.new
  end

  # GET /relatorio_consulta/1/edit
  def edit
  end

  # POST /relatorio_consulta or /relatorio_consulta.json
  def create
    @relatorio_consultum = RelatorioConsultum.new(relatorio_consultum_params)

    respond_to do |format|
      if @relatorio_consultum.save
        format.html { redirect_to relatorio_consultum_url(@relatorio_consultum), notice: "Relatorio consultum was successfully created." }
        format.json { render :show, status: :created, location: @relatorio_consultum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relatorio_consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_consulta/1 or /relatorio_consulta/1.json
  def update
    respond_to do |format|
      if @relatorio_consultum.update(relatorio_consultum_params)
        format.html { redirect_to relatorio_consultum_url(@relatorio_consultum), notice: "Relatorio consultum was successfully updated." }
        format.json { render :show, status: :ok, location: @relatorio_consultum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relatorio_consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_consulta/1 or /relatorio_consulta/1.json
  def destroy
    @relatorio_consultum.destroy

    respond_to do |format|
      format.html { redirect_to relatorio_consulta_url, notice: "Relatorio consultum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_consultum
      @relatorio_consultum = RelatorioConsultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorio_consultum_params
      params.require(:relatorio_consultum).permit(:presente, :comentario)
    end
end
