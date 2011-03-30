require 'test_helper'

class StronaglownaControllerTest < ActionController::TestCase
  test "should get naglowek" do
    get :naglowek
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get stopka" do
    get :stopka
    assert_response :success
  end

end
