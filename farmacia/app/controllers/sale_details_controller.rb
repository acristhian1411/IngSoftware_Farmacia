class SaleDetailsController < ApplicationController
  before_action :set_sale_detail, only: [:show, :edit, :update, :destroy]

  # GET /sale_details
  # GET /sale_details.json
  def index
    @sale_details = @sale.sale_details.build
    @sale_details.item = Producto.first
  end


  # GET /sale_details/new
  def new
    @sale_detail = SaleDetail.new
  end

  # GET /sale_details/1/edit
  def edit
    @sale_detail = SaleDetail.find(params[:id])
  end

  # POST /sale_details
  # POST /sale_details.json
  def create
    producto_exists = false
    producto_id = params[:sale_details][:producto_id].to_i
    @sale.sale_details.each do |detail|
      if detail.producto_id == producto_id
        # Ya existe el item en la factura, agregar cantidad
        producto_exists = true
        @sale_detail = detail
        @saved_sale_detail = detail.id
        break
      end
    end
    if producto_exists
      @sale_detail.cantidad += params[:sale_details][:cantidad].to_i
      @sale_detail.precio = params[:sale_details][:precio].to_f
      @sale_detail.save!
    else
      sale_detail = SaleDetail.new(sale_details_params)
      if @sale.sale_details.last.nil?
        sale_detail.number = 1
      else
        sale_detail.number = @sale.sale_details.last.number + 1
      end
      @sale.sale_details << sale_detail
    end
    @sale.save!
    end
  end


  def update
  end

  # DELETE /sale_details/1
  # DELETE /sale_details/1.json
  def destroy
    @sale_detail = SaleDetail.find(params[:id])
    @sale_detail.destroy

    respond_to do |format|
      format.js { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_detail
      @sale_detail = SaleDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_detail_params
      params.require(:sale_detail).permit(:sale_id, :number, :producto_id, :cantidad, :precio)
    end
end
