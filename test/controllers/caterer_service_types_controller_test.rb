require 'test_helper'

class CatererServiceTypesControllerTest < ActionController::TestCase
  setup do
    @caterer_service_type = caterer_service_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterer_service_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterer_service_type" do
    assert_difference('CatererServiceType.count') do
      post :create, caterer_service_type: { name: @caterer_service_type.name }
    end

    assert_redirected_to caterer_service_type_path(assigns(:caterer_service_type))
  end

  test "should show caterer_service_type" do
    get :show, id: @caterer_service_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterer_service_type
    assert_response :success
  end

  test "should update caterer_service_type" do
    patch :update, id: @caterer_service_type, caterer_service_type: { name: @caterer_service_type.name }
    assert_redirected_to caterer_service_type_path(assigns(:caterer_service_type))
  end

  test "should destroy caterer_service_type" do
    assert_difference('CatererServiceType.count', -1) do
      delete :destroy, id: @caterer_service_type
    end

    assert_redirected_to caterer_service_types_path
  end
end
