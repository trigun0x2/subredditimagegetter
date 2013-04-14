require 'test_helper'

class GetheadersControllerTest < ActionController::TestCase
  setup do
    @getheader = getheaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getheaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getheader" do
    assert_difference('Getheader.count') do
      post :create, getheader: {  }
    end

    assert_redirected_to getheader_path(assigns(:getheader))
  end

  test "should show getheader" do
    get :show, id: @getheader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getheader
    assert_response :success
  end

  test "should update getheader" do
    put :update, id: @getheader, getheader: {  }
    assert_redirected_to getheader_path(assigns(:getheader))
  end

  test "should destroy getheader" do
    assert_difference('Getheader.count', -1) do
      delete :destroy, id: @getheader
    end

    assert_redirected_to getheaders_path
  end
end
