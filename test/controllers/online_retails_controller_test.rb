require 'test_helper'

class OnlineRetailsControllerTest < ActionController::TestCase
  setup do
    @online_retail = online_retails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_retails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_retail" do
    assert_difference('OnlineRetail.count') do
      post :create, online_retail: { brand_name: @online_retail.brand_name, draft: @online_retail.draft, expiry_date: @online_retail.expiry_date, facebook_page: @online_retail.facebook_page, general_contact_number: @online_retail.general_contact_number, general_email: @online_retail.general_email, halal_expiry: @online_retail.halal_expiry, instagram_handle: @online_retail.instagram_handle, listing_id: @online_retail.listing_id, merchant_id: @online_retail.merchant_id, question_1: @online_retail.question_1, self_collection_address: @online_retail.self_collection_address, verified: @online_retail.verified, website_online_ordering_page: @online_retail.website_online_ordering_page }
    end

    assert_redirected_to online_retail_path(assigns(:online_retail))
  end

  test "should show online_retail" do
    get :show, id: @online_retail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_retail
    assert_response :success
  end

  test "should update online_retail" do
    patch :update, id: @online_retail, online_retail: { brand_name: @online_retail.brand_name, draft: @online_retail.draft, expiry_date: @online_retail.expiry_date, facebook_page: @online_retail.facebook_page, general_contact_number: @online_retail.general_contact_number, general_email: @online_retail.general_email, halal_expiry: @online_retail.halal_expiry, instagram_handle: @online_retail.instagram_handle, listing_id: @online_retail.listing_id, merchant_id: @online_retail.merchant_id, question_1: @online_retail.question_1, self_collection_address: @online_retail.self_collection_address, verified: @online_retail.verified, website_online_ordering_page: @online_retail.website_online_ordering_page }
    assert_redirected_to online_retail_path(assigns(:online_retail))
  end

  test "should destroy online_retail" do
    assert_difference('OnlineRetail.count', -1) do
      delete :destroy, id: @online_retail
    end

    assert_redirected_to online_retails_path
  end
end
