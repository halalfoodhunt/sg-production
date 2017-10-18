require 'test_helper'

class RawFoodsControllerTest < ActionController::TestCase
  setup do
    @raw_food = raw_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_food" do
    assert_difference('RawFood.count') do
      post :create, raw_food: { brand_name: @raw_food.brand_name, draft: @raw_food.draft, expiry_date: @raw_food.expiry_date, facebook_page: @raw_food.facebook_page, general_contact_number: @raw_food.general_contact_number, general_email: @raw_food.general_email, halal_expiry: @raw_food.halal_expiry, instagram_handle: @raw_food.instagram_handle, listing_id: @raw_food.listing_id, merchant_id: @raw_food.merchant_id, question_1: @raw_food.question_1, self_collection_address: @raw_food.self_collection_address, verified: @raw_food.verified, website_online_ordering_page: @raw_food.website_online_ordering_page }
    end

    assert_redirected_to raw_food_path(assigns(:raw_food))
  end

  test "should show raw_food" do
    get :show, id: @raw_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_food
    assert_response :success
  end

  test "should update raw_food" do
    patch :update, id: @raw_food, raw_food: { brand_name: @raw_food.brand_name, draft: @raw_food.draft, expiry_date: @raw_food.expiry_date, facebook_page: @raw_food.facebook_page, general_contact_number: @raw_food.general_contact_number, general_email: @raw_food.general_email, halal_expiry: @raw_food.halal_expiry, instagram_handle: @raw_food.instagram_handle, listing_id: @raw_food.listing_id, merchant_id: @raw_food.merchant_id, question_1: @raw_food.question_1, self_collection_address: @raw_food.self_collection_address, verified: @raw_food.verified, website_online_ordering_page: @raw_food.website_online_ordering_page }
    assert_redirected_to raw_food_path(assigns(:raw_food))
  end

  test "should destroy raw_food" do
    assert_difference('RawFood.count', -1) do
      delete :destroy, id: @raw_food
    end

    assert_redirected_to raw_foods_path
  end
end
