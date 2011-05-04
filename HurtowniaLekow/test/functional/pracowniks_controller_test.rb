require 'test_helper'

class PracowniksControllerTest < ActionController::TestCase
  setup do
    @pracownik = pracowniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracowniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pracownik" do
    assert_difference('Pracownik.count') do
      post :create, :pracownik => @pracownik.attributes
    end

    assert_redirected_to pracownik_path(assigns(:pracownik))
  end

  test "should show pracownik" do
    get :show, :id => @pracownik.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pracownik.to_param
    assert_response :success
  end

  test "should update pracownik" do
    put :update, :id => @pracownik.to_param, :pracownik => @pracownik.attributes
    assert_redirected_to pracownik_path(assigns(:pracownik))
  end

  test "should destroy pracownik" do
    assert_difference('Pracownik.count', -1) do
      delete :destroy, :id => @pracownik.to_param
    end

    assert_redirected_to pracowniks_path
  end
end
