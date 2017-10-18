require 'test_helper'

class CaterersControllerTest < ActionController::TestCase
  setup do
    @caterer = caterers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterer" do
    assert_difference('Caterer.count') do
      post :create, caterer: { brand_name: @caterer.brand_name, draft: @caterer.draft, expiry_date: @caterer.expiry_date, facebook_page: @caterer.facebook_page, general_coontact_number: @caterer.general_coontact_number, general_email: @caterer.general_email, halal_expiry: @caterer.halal_expiry, instagram_handle: @caterer.instagram_handle, listing_id: @caterer.listing_id, merchant_id: @caterer.merchant_id, question_1: @caterer.question_1, verified: @caterer.verified, website_online_ordering_page: @caterer.website_online_ordering_page }
    end

    assert_redirected_to caterer_path(assigns(:caterer))
  end

  test "should show caterer" do
    get :show, id: @caterer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterer
    assert_response :success
  end

  test "should update caterer" do
    patch :update, id: @caterer, caterer: { brand_name: @caterer.brand_name, draft: @caterer.draft, expiry_date: @caterer.expiry_date, facebook_page: @caterer.facebook_page, general_coontact_number: @caterer.general_coontact_number, general_email: @caterer.general_email, halal_expiry: @caterer.halal_expiry, instagram_handle: @caterer.instagram_handle, listing_id: @caterer.listing_id, merchant_id: @caterer.merchant_id, question_1: @caterer.question_1, verified: @caterer.verified, website_online_ordering_page: @caterer.website_online_ordering_page }
    assert_redirected_to caterer_path(assigns(:caterer))
  end

  test "should destroy caterer" do
    assert_difference('Caterer.count', -1) do
      delete :destroy, id: @caterer
    end

    assert_redirected_to caterers_path
  end
end
