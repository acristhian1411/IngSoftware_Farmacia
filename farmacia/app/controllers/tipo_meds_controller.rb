class TipoMedsController < ApplicationController
  before_action :set_tipo_med, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit
  # GET /tipo_meds
  # GET /tipo_meds.json
  def index
    if current_user.admin != false
        @tipo_meds = TipoMed.all
    end

    if current_user.admin != true
       @tipo_meds = TipoMed.where("tipo_active != false")
    end
  end

  # GET /tipo_meds/1
  # GET /tipo_meds/1.json
  def show
  end

  # GET /tipo_meds/new
  def new
    @tipo_med = TipoMed.new
  end

  # GET /tipo_meds/1/edit
  def edit
  end

  # POST /tipo_meds
  # POST /tipo_meds.json
  def create
    @tipo_med = TipoMed.new(tipo_med_params)

    respond_to do |format|
      if @tipo_med.save
        format.html { redirect_to @tipo_med, notice: 'Tipo medicamento fue creado con éxito.' }
        format.json { render :show, status: :created, location: @tipo_med }
      else
        format.html { render :new }
        format.json { render json: @tipo_med.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_meds/1
  # PATCH/PUT /tipo_meds/1.json
  def update
    respond_to do |format|
      if @tipo_med.update(tipo_med_params)
        format.html { redirect_to @tipo_med, notice: 'Tipo medicamento fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @tipo_med }
      else
        format.html { render :edit }
        format.json { render json: @tipo_med.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_meds/1
  # DELETE /tipo_meds/1.json
  def destroy
    tipo = TipoMed.find(params[:id])
    tipo.update_attribute(:tipo_active, false)
    redirect_to tipo_med_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_med
      @tipo_med = TipoMed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_med_params
      params.require(:tipo_med).permit(:tipo_descrip, :tipo_active)
    end
end
