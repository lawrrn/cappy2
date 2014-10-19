require 'test_helper'

class BiscuitsControllerTest < ActionController::TestCase
  setup do
    @biscuit = biscuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biscuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biscuit" do
    assert_difference('Biscuit.count') do
      post :create, biscuit: { content: @biscuit.content, name: @biscuit.name }
    end

    assert_redirected_to biscuit_path(assigns(:biscuit))
  end

  test "should show biscuit" do
    get :show, id: @biscuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biscuit
    assert_response :success
  end

  test "should update biscuit" do
    patch :update, id: @biscuit, biscuit: { content: @biscuit.content, name: @biscuit.name }
    assert_redirected_to biscuit_path(assigns(:biscuit))
  end

  test "should destroy biscuit" do
    assert_difference('Biscuit.count', -1) do
      delete :destroy, id: @biscuit
    end

    assert_redirected_to biscuits_path
  end
end
