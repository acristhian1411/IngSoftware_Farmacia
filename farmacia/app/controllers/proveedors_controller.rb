class ProveedorsController < ApplicationController
  before_action :set_proveedor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit
  # GET /proveedors
  # GET /proveedors.json
  def index
    if current_user.admin != false
        @proveedors = Proveedor.all
        if params[:razon_social].present?
            @proveedors = @proveedors.where("razon_social ILIKE ?", "%#{params[:razon_social]}%")
        end
    end

    if current_user.admin != true
       @proveedors = Proveedor.where("prov_active != false")
        if params[:razon_social].present?
            @proveedors = @proveedors.where("razon_social ILIKE ?", "%#{params[:razon_social]}%")
        end
    end
  end

  # GET /proveedors/1
  # GET /proveedors/1.json
  def show
  end

  # GET /proveedors/new
  def new
    @proveedor = Proveedor.new
  end

  # GET /proveedors/1/edit
  def edit
  end

  # POST /proveedors
  # POST /proveedors.json
  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to @proveedor, notice: 'Proveedor fue creado con éxito.' }
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedors/1
  # PATCH/PUT /proveedors/1.json
  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to @proveedor, notice: 'Proveedor fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedors/1
  # DELETE /proveedors/1.json
  def destroy
    prov = Proveedor.find(params[:id])
    prov.update_attribute(:prov_active, false)
    redirect_to proveedors_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_params
      params.require(:proveedor).permit(:ruc, :razon_social, :direccion, :telefono, :email, :prov_active)
    end
    
