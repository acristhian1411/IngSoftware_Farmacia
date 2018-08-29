class CompraDetallesController < ApplicationController
  before_action :set_compra_detalle, only: [:show, :edit, :update, :destroy]

# GET /sale_details
  # GET /sale_details.json
  def index
    @compra_detalles = @compra.compra_detalle.build
    @compra_detalles.producto = Producto.first
  end


  # GET /sale_details/new
  def new
    @compra_detalles = CompraDetalle.new
  end

  # GET /sale_details/1/edit
  def edit
    @compra_detalles = CompraDetalle.find(params[:id])
  end

  # POST /sale_details
  # POST /sale_details.json
  def create
    producto_exists = false
    producto_id = params[:compra_detalles][:producto_id].to_i
    @sale.compra_detalles.each do |detail|
      if detail.producto_id == producto_id
        # Ya existe el item en la factura, agregar cantidad
        producto_exists = true
        @compra_detalles = detail
        @saved_compra_detalles = detail.id
        break
      end
    end
    if producto_exists
      @compra_detalles.cantidad += params[:compra_detalles][:cantidad].to_i
      @compra_detalles.precio = params[:compra_detalles][:precio].to_f
      @compra_detalles.save!
    else
      compra_detalle = CompraDetalle.new(compra_detalle_params)
      if @compra.compra_detalles.last.nil?
        compra_detalles.number = 1
      else
        compra_detalles.number = @compra.compra_detalles.last.number + 1
      end
      @compra.compra_detalles << compra_detalles
    end
    @compra.save!
    end
  end


  def update
  end

  # DELETE /sale_details/1
  # DELETE /sale_details/1.json
  def destroy
    @compra_detalles = CompraDetalle.find(params[:id])
    @compra_detalles.destroy

    respond_to do |format|
      format.js { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_detalle
      @compra_detalles = CompraDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_detalle_params
      params.require(:compra_detalles).permit(:compra_id, :number, :producto_id, :cantidad, :precio)
    end
end
