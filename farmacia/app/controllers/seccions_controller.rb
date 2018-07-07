class SeccionsController < ApplicationController
  before_action :set_seccion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /seccions
  # GET /seccions.json
  def index
    if current_user.admin != false
        @seccions = Seccion.all
    end

    if current_user.admin != true
       @seccions = Seccion.where("seccion_active != false")
    end
  end

  # GET /seccions/1
  # GET /seccions/1.json
  def show
  end

  # GET /seccions/new
  def new
    @seccion = Seccion.new
  end

  # GET /seccions/1/edit
  def edit
  end

  # POST /seccions
  # POST /seccions.json
  def create
    @seccion = Seccion.new(seccion_params)

    respond_to do |format|
      if @seccion.save
        format.html { redirect_to @seccion, notice: 'Seccion fue creado con éxito.' }
        format.json { render :show, status: :created, location: @seccion }
      else
        format.html { render :new }
        format.json { render json: @seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seccions/1
  # PATCH/PUT /seccions/1.json
  def update
    respond_to do |format|
      if @seccion.update(seccion_params)
        format.html { redirect_to @seccion, notice: 'Seccion fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @seccion }
      else
        format.html { render :edit }
        format.json { render json: @seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seccions/1
  # DELETE /seccions/1.json
  def destroy
    seccion = Seccion.find(params[:id])
    seccion.update_attribute(:tipo_active, false)
    redirect_to seccion_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccion
      @seccion = Seccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seccion_params
      params.require(:seccion).permit(:sec_descrip, :seccion_active)
    end
end
