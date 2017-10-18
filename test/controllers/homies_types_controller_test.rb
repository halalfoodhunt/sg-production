require 'test_helper'

class HomiesTypesControllerTest < ActionController::TestCase
  setup do
    @homies_type = homies_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homies_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homies_type" do
    assert_difference('HomiesType.count') do
      post :create, homies_type: { name: @homies_type.name }
    end

    assert_redirected_to homies_type_path(assigns(:homies_type))
  end

  test "should show homies_type" do
    get :show, id: @homies_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homies_type
    assert_response :success
  end

  test "should update homies_type" do
    patch :update, id: @homies_type, homies_type: { name: @homies_type.name }
    assert_redirected_to homies_type_path(assigns(:homies_type))
  end

  test "should destroy homies_type" do
    assert_difference('HomiesType.count', -1) do
      delete :destroy, id: @homies_type
    end

    assert_redirected_to homies_types_path
  end
end
