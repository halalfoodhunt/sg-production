require 'test_helper'

class OrderingMethodsControllerTest < ActionController::TestCase
  setup do
    @ordering_method = ordering_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordering_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordering_method" do
    assert_difference('OrderingMethod.count') do
      post :create, ordering_method: { name: @ordering_method.name }
    end

    assert_redirected_to ordering_method_path(assigns(:ordering_method))
  end

  test "should show ordering_method" do
    get :show, id: @ordering_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordering_method
    assert_response :success
  end

  test "should update ordering_method" do
    patch :update, id: @ordering_method, ordering_method: { name: @ordering_method.name }
    assert_redirected_to ordering_method_path(assigns(:ordering_method))
  end

  test "should destroy ordering_method" do
    assert_difference('OrderingMethod.count', -1) do
      delete :destroy, id: @ordering_method
    end

    assert_redirected_to ordering_methods_path
  end
end
