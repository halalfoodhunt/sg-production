require 'test_helper'

class MainOrderingMethodsControllerTest < ActionController::TestCase
  setup do
    @main_ordering_method = main_ordering_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_ordering_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_ordering_method" do
    assert_difference('MainOrderingMethod.count') do
      post :create, main_ordering_method: { name: @main_ordering_method.name }
    end

    assert_redirected_to main_ordering_method_path(assigns(:main_ordering_method))
  end

  test "should show main_ordering_method" do
    get :show, id: @main_ordering_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_ordering_method
    assert_response :success
  end

  test "should update main_ordering_method" do
    patch :update, id: @main_ordering_method, main_ordering_method: { name: @main_ordering_method.name }
    assert_redirected_to main_ordering_method_path(assigns(:main_ordering_method))
  end

  test "should destroy main_ordering_method" do
    assert_difference('MainOrderingMethod.count', -1) do
      delete :destroy, id: @main_ordering_method
    end

    assert_redirected_to main_ordering_methods_path
  end
end
