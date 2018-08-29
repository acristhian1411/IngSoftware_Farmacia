class ComprasController < ApplicationController
  before_action :set_compra, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /sales
  # GET /sales.json
  def index
    @proveedor = Proveedor.where("prov_active != false")
    @compra = Compra.all
    unsaved_compras = Compra.where(state: "draft", user: current_user)
    unsaved_compras.each do |compra|
    compra.destroy
    end

  end
  # GET /sales/1
  # GET /sales/1.json
  def show
    @proveedor = Proveedor.where("prov_active != false")
  end

  # GET /sales/new
  def new
    @proveedor = Proveedor.where("prov_active != false")
    last_compra = Compra.where(state: "confirmed", user: current_user).maximum('number')
    number =  (last_compra != nil) ? last_compra + 1 : 1
    @compra = Compra.create(date: Date::current, number: number, state: "draft", user: current_user)
    @compra.compra_detalles.build
    params[:compra_id] = @compra.id.to_s
  end

  # GET /sales/1/edit
  def edit
    @proveedor = Proveedor.where("prov_active != false")
  end

  # POST /sales
  # POST /sales.json
  def create
    @proveedor = Proveedor.where("prov_active != false")
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    @proveedor = Proveedor.where("prov_active != false")
    @compra.confirmed!
    respond_to do |format|
      if @compra.update(compra_params)
        format.html { redirect_to @compra, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra }
      else
        format.html { render :edit }
        format.json { render json: @compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @compra.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Compra eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra
      @compra = Compra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_params
      params.require(:compra).permit(:number, :date, :user_id, :proveedor_id, compra_detalles_attributes: [:id, :sale_id, :producto_id, :number, :cantidad, :precio, :_destroy] )
    end
end
