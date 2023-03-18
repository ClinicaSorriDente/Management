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
    @consultum = Consultum.find_by(params[:consultum_id])
    @relatorio_consultum = RelatorioConsultum.new(presente: relatorio_consultum_params[:presente],comentario: relatorio_consultum_params[:comentario], consultum_id: @consultum.id)
    @consultum.relatorio_consultum = @relatorio_consultum

      if @relatorio_consultum.save
        redirect_to consultum_relatorio_consulta_path, notice: "Relatorio de consulta foi Criado com sucesso"
      else
        render :'relatorio_consulta/new', status: :unprocessable_entity
      end

  end

  # PATCH/PUT /relatorio_consulta/1 or /relatorio_consulta/1.json
  def update
    if @relatorio_consultum.update(relatorio_consultum_params)
      redirect_to consultum_relatorio_consulta_path, notice: "Relatorio de consulta foi atualizado mcom sucesso"

    else
      render :'relatorio_consulta/edit', status: :unprocessable_entity

    end
  end

  # DELETE /relatorio_consulta/1 or /relatorio_consulta/1.json
  def destroy
    @relatorio_consultum.destroy
    redirect_to consultum_relatorio_consulta_path, notice: "Relatorio de consulta excluido com sucesso"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_consultum
      @relatorio_consultum = RelatorioConsultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorio_consultum_params
      params.require(:relatorio_consultum).permit(:presente, :comentario, :consultum_id)
    end
end
