require 'test_helper'

class FoodDeliveriesControllerTest < ActionController::TestCase
  setup do
    @food_delivery = food_deliveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_deliveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_delivery" do
    assert_difference('FoodDelivery.count') do
      post :create, food_delivery: { brand_name: @food_delivery.brand_name, delivery_hotline: @food_delivery.delivery_hotline, draft: @food_delivery.draft, facebook_page: @food_delivery.facebook_page, general_email: @food_delivery.general_email, instagram_handle: @food_delivery.instagram_handle, link_to_online_ordering_page: @food_delivery.link_to_online_ordering_page, listing_id: @food_delivery.listing_id, merchant_id: @food_delivery.merchant_id, question_1: @food_delivery.question_1, verified: @food_delivery.verified }
    end

    assert_redirected_to food_delivery_path(assigns(:food_delivery))
  end

  test "should show food_delivery" do
    get :show, id: @food_delivery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_delivery
    assert_response :success
  end

  test "should update food_delivery" do
    patch :update, id: @food_delivery, food_delivery: { brand_name: @food_delivery.brand_name, delivery_hotline: @food_delivery.delivery_hotline, draft: @food_delivery.draft, facebook_page: @food_delivery.facebook_page, general_email: @food_delivery.general_email, instagram_handle: @food_delivery.instagram_handle, link_to_online_ordering_page: @food_delivery.link_to_online_ordering_page, listing_id: @food_delivery.listing_id, merchant_id: @food_delivery.merchant_id, question_1: @food_delivery.question_1, verified: @food_delivery.verified }
    assert_redirected_to food_delivery_path(assigns(:food_delivery))
  end

  test "should destroy food_delivery" do
    assert_difference('FoodDelivery.count', -1) do
      delete :destroy, id: @food_delivery
    end

    assert_redirected_to food_deliveries_path
  end
end
