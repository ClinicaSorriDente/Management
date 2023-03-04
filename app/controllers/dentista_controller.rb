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
  end

  # GET /dentista/1/edit
  def edit
  end

  # POST /dentista or /dentista.json
  def create
    @dentistum = Dentistum.new(dentistum_params)

    respond_to do |format|
      if @dentistum.save
        format.html { redirect_to dentistum_url(@dentistum), notice: "Dentistum was successfully created." }
        format.json { render :show, status: :created, location: @dentistum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dentistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dentista/1 or /dentista/1.json
  def update
    respond_to do |format|
      if @dentistum.update(dentistum_params)
        format.html { redirect_to dentistum_url(@dentistum), notice: "Dentistum was successfully updated." }
        format.json { render :show, status: :ok, location: @dentistum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dentistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dentista/1 or /dentista/1.json
  def destroy
    @dentistum.destroy

    respond_to do |format|
      format.html { redirect_to dentista_url, notice: "Dentistum was successfully destroyed." }
      format.json { head :no_content }
    end
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
