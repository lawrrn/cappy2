require 'test_helper'

class KayciesControllerTest < ActionController::TestCase
  setup do
    @kaycy = kaycies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kaycies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kaycy" do
    assert_difference('Kaycie.count') do
      post :create, kaycy: { content: @kaycy.content, name: @kaycy.name }
    end

    assert_redirected_to kaycy_path(assigns(:kaycy))
  end

  test "should show kaycy" do
    get :show, id: @kaycy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kaycy
    assert_response :success
  end

  test "should update kaycy" do
    patch :update, id: @kaycy, kaycy: { content: @kaycy.content, name: @kaycy.name }
    assert_redirected_to kaycy_path(assigns(:kaycy))
  end

  test "should destroy kaycy" do
    assert_difference('Kaycie.count', -1) do
      delete :destroy, id: @kaycy
    end

    assert_redirected_to kaycies_path
  end
end
