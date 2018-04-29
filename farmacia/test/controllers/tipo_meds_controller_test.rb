require 'test_helper'

class TipoMedsControllerTest < ActionController::TestCase
  setup do
    @tipo_med = tipo_meds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_meds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_med" do
    assert_difference('TipoMed.count') do
      post :create, tipo_med: { tipo_active: @tipo_med.tipo_active, tipo_descrip: @tipo_med.tipo_descrip }
    end

    assert_redirected_to tipo_med_path(assigns(:tipo_med))
  end

  test "should show tipo_med" do
    get :show, id: @tipo_med
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_med
    assert_response :success
  end

  test "should update tipo_med" do
    patch :update, id: @tipo_med, tipo_med: { tipo_active: @tipo_med.tipo_active, tipo_descrip: @tipo_med.tipo_descrip }
    assert_redirected_to tipo_med_path(assigns(:tipo_med))
  end

  test "should destroy tipo_med" do
    assert_difference('TipoMed.count', -1) do
      delete :destroy, id: @tipo_med
    end

    assert_redirected_to tipo_meds_path
  end
end
