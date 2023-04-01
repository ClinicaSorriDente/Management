class RecepcionistaController < ApplicationController
  before_action :set_recepcionistum, only: %i[ show edit update destroy ]

  # GET /recepcionista or /recepcionista.json
  def index
    @recepcionista = Recepcionistum.all
  end

  # GET /recepcionista/1 or /recepcionista/1.json
  def show
  end

  # GET /recepcionista/new
  def new
    @recepcionistum = Recepcionistum.new
  end

  # GET /recepcionista/1/edit
  def edit
  end

  # POST /recepcionista or /recepcionista.json
  def create
    @recepcionistum = Recepcionistum.new(recepcionistum_params)

    respond_to do |format|
      if @recepcionistum.save
        format.html { flash[:success]=  "Recepcionista criado com sucesso."
          redirect_to recepcionistum_url(@recepcionistum) }
        format.json { render :show, status: :created, location: @recepcionistum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recepcionistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcionista/1 or /recepcionista/1.json
  def update
    respond_to do |format|
      if @recepcionistum.update(recepcionistum_params)
        format.html { flash[:success]=  "Recepcionista atualizado com sucesso."
          redirect_to recepcionistum_url(@recepcionistum) }
        format.json { render :show, status: :ok, location: @recepcionistum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recepcionistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcionista/1 or /recepcionista/1.json
  def destroy
    @recepcionistum.destroy

    respond_to do |format|
      format.html { flash[:success]=  "Conta de recepcionista deletada com sucesso."
        redirect_to recepcionista_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcionistum
      @recepcionistum = Recepcionistum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recepcionistum_params
      params.require(:recepcionistum).permit(:nome, :credencial, :cpf, :telefone, :email)
    end
end
