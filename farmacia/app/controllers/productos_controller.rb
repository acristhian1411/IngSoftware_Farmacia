class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
    @productos = Producto.where("prod_active != false")
    
    @droga = Droga.all
    @tipo_med = TipoMed.all
    @proveedor = Proveedor.all
    @marca = Marca.all
    @seccion = Seccion.all

  end

  # GET /productos/1
  # GET /productos/1.json
  def show
    
  end

  # GET /productos/new
  def new
    @producto = Producto.new
    @droga = Droga.all
    @tipo_med = TipoMed.all
    @proveedor = Proveedor.all
    @marca = Marca.all
    @seccion = Seccion.all
  end

  # GET /productos/1/edit
  def edit
    @droga = Droga.all
    @tipo_med = TipoMed.all
    @proveedor = Proveedor.all
    @marca = Marca.all
    @seccion = Seccion.all
  end

  # POST /productos
  # POST /productos.json
  def create
    @producto = Producto.new(producto_params)
    @tipo_med = TipoMed.all
    @proveedor = Proveedor.all
    @marca = Marca.all
    @seccion = Seccion.all
    @droga = Droga.find(params[:droga][:droga_id]) 
    respond_to do |format|
      if @producto.save
        format.html { redirect_to @producto, notice: 'Producto fue creado con éxito.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    @droga = Droga.all
    @tipo_med = TipoMed.all
    @proveedor = Proveedor.all
    @marca = Marca.all
    @seccion = Seccion.all


    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'Producto fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'Producto fue eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:codigo, :prod_descrip, :fecha_vence, :cantidad, :precio_compra, :precio_venta, :prod_active, :marca_id, :proveedor_id, :seccion_id, :tipo_med_id, droga_ids:[])
    end
end
