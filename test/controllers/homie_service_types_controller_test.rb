require 'test_helper'

class HomieServiceTypesControllerTest < ActionController::TestCase
  setup do
    @homie_service_type = homie_service_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homie_service_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homie_service_type" do
    assert_difference('HomieServiceType.count') do
      post :create, homie_service_type: { name: @homie_service_type.name }
    end

    assert_redirected_to homie_service_type_path(assigns(:homie_service_type))
  end

  test "should show homie_service_type" do
    get :show, id: @homie_service_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homie_service_type
    assert_response :success
  end

  test "should update homie_service_type" do
    patch :update, id: @homie_service_type, homie_service_type: { name: @homie_service_type.name }
    assert_redirected_to homie_service_type_path(assigns(:homie_service_type))
  end

  test "should destroy homie_service_type" do
    assert_difference('HomieServiceType.count', -1) do
      delete :destroy, id: @homie_service_type
    end

    assert_redirected_to homie_service_types_path
  end
end
