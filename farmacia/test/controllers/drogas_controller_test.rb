require 'test_helper'

class DrogasControllerTest < ActionController::TestCase
  setup do
    @droga = drogas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drogas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create droga" do
    assert_difference('Droga.count') do
      post :create, droga: { droga_active: @droga.droga_active, droga_descrip: @droga.droga_descrip }
    end

    assert_redirected_to droga_path(assigns(:droga))
  end

  test "should show droga" do
    get :show, id: @droga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @droga
    assert_response :success
  end

  test "should update droga" do
    patch :update, id: @droga, droga: { droga_active: @droga.droga_active, droga_descrip: @droga.droga_descrip }
    assert_redirected_to droga_path(assigns(:droga))
  end

  test "should destroy droga" do
    assert_difference('Droga.count', -1) do
      delete :destroy, id: @droga
    end

    assert_redirected_to drogas_path
  end
end
