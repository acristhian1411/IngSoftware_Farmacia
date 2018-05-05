require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, producto: { cantidad: @producto.cantidad, codigo: @producto.codigo, droga_id: @producto.droga_id, fecha_vence: @producto.fecha_vence, marca_id: @producto.marca_id, precio_compra: @producto.precio_compra, precio_venta: @producto.precio_venta, prod_active: @producto.prod_active, prod_descrip: @producto.prod_descrip, proveedor_id: @producto.proveedor_id, seccion_id: @producto.seccion_id, tipo_med_id: @producto.tipo_med_id }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto
    assert_response :success
  end

  test "should update producto" do
    patch :update, id: @producto, producto: { cantidad: @producto.cantidad, codigo: @producto.codigo, droga_id: @producto.droga_id, fecha_vence: @producto.fecha_vence, marca_id: @producto.marca_id, precio_compra: @producto.precio_compra, precio_venta: @producto.precio_venta, prod_active: @producto.prod_active, prod_descrip: @producto.prod_descrip, proveedor_id: @producto.proveedor_id, seccion_id: @producto.seccion_id, tipo_med_id: @producto.tipo_med_id }
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, id: @producto
    end

    assert_redirected_to productos_path
  end
end
