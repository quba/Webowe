require 'test_helper'

class LeksControllerTest < ActionController::TestCase
  setup do
    @lek = leks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lek" do
    assert_difference('Lek.count') do
      post :create, :lek => @lek.attributes
    end

    assert_redirected_to lek_path(assigns(:lek))
  end

  test "should show lek" do
    get :show, :id => @lek.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lek.to_param
    assert_response :success
  end

  test "should update lek" do
    put :update, :id => @lek.to_param, :lek => @lek.attributes
    assert_redirected_to lek_path(assigns(:lek))
  end

  test "should destroy lek" do
    assert_difference('Lek.count', -1) do
      delete :destroy, :id => @lek.to_param
    end

    assert_redirected_to leks_path
  end
end
