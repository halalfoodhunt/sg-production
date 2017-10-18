require 'test_helper'

class RawFoodProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @raw_food_product_category = raw_food_product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_food_product_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_food_product_category" do
    assert_difference('RawFoodProductCategory.count') do
      post :create, raw_food_product_category: { name: @raw_food_product_category.name }
    end

    assert_redirected_to raw_food_product_category_path(assigns(:raw_food_product_category))
  end

  test "should show raw_food_product_category" do
    get :show, id: @raw_food_product_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_food_product_category
    assert_response :success
  end

  test "should update raw_food_product_category" do
    patch :update, id: @raw_food_product_category, raw_food_product_category: { name: @raw_food_product_category.name }
    assert_redirected_to raw_food_product_category_path(assigns(:raw_food_product_category))
  end

  test "should destroy raw_food_product_category" do
    assert_difference('RawFoodProductCategory.count', -1) do
      delete :destroy, id: @raw_food_product_category
    end

    assert_redirected_to raw_food_product_categories_path
  end
end
