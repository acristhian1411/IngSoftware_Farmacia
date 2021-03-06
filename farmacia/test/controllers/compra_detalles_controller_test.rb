require 'test_helper'

class CompraDetallesControllerTest < ActionController::TestCase
  setup do
    @compra_detalle = compra_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_detalle" do
    assert_difference('CompraDetalle.count') do
      post :create, compra_detalle: { cantidad: @compra_detalle.cantidad, compra_id: @compra_detalle.compra_id, number: @compra_detalle.number, precio: @compra_detalle.precio, producto_id: @compra_detalle.producto_id }
    end

    assert_redirected_to compra_detalle_path(assigns(:compra_detalle))
  end

  test "should show compra_detalle" do
    get :show, id: @compra_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_detalle
    assert_response :success
  end

  test "should update compra_detalle" do
    patch :update, id: @compra_detalle, compra_detalle: { cantidad: @compra_detalle.cantidad, compra_id: @compra_detalle.compra_id, number: @compra_detalle.number, precio: @compra_detalle.precio, producto_id: @compra_detalle.producto_id }
    assert_redirected_to compra_detalle_path(assigns(:compra_detalle))
  end

  test "should destroy compra_detalle" do
    assert_difference('CompraDetalle.count', -1) do
      delete :destroy, id: @compra_detalle
    end

    assert_redirected_to compra_detalles_path
  end
end
