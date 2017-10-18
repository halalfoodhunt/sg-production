require 'test_helper'

class BakerProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @baker_product_category = baker_product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baker_product_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baker_product_category" do
    assert_difference('BakerProductCategory.count') do
      post :create, baker_product_category: { name: @baker_product_category.name }
    end

    assert_redirected_to baker_product_category_path(assigns(:baker_product_category))
  end

  test "should show baker_product_category" do
    get :show, id: @baker_product_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baker_product_category
    assert_response :success
  end

  test "should update baker_product_category" do
    patch :update, id: @baker_product_category, baker_product_category: { name: @baker_product_category.name }
    assert_redirected_to baker_product_category_path(assigns(:baker_product_category))
  end

  test "should destroy baker_product_category" do
    assert_difference('BakerProductCategory.count', -1) do
      delete :destroy, id: @baker_product_category
    end

    assert_redirected_to baker_product_categories_path
  end
end
