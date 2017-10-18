require 'test_helper'

class BakerServiceTypesControllerTest < ActionController::TestCase
  setup do
    @baker_service_type = baker_service_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baker_service_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baker_service_type" do
    assert_difference('BakerServiceType.count') do
      post :create, baker_service_type: { name: @baker_service_type.name }
    end

    assert_redirected_to baker_service_type_path(assigns(:baker_service_type))
  end

  test "should show baker_service_type" do
    get :show, id: @baker_service_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baker_service_type
    assert_response :success
  end

  test "should update baker_service_type" do
    patch :update, id: @baker_service_type, baker_service_type: { name: @baker_service_type.name }
    assert_redirected_to baker_service_type_path(assigns(:baker_service_type))
  end

  test "should destroy baker_service_type" do
    assert_difference('BakerServiceType.count', -1) do
      delete :destroy, id: @baker_service_type
    end

    assert_redirected_to baker_service_types_path
  end
end
