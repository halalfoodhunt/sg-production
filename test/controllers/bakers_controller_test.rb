require 'test_helper'

class BakersControllerTest < ActionController::TestCase
  setup do
    @baker = bakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baker" do
    assert_difference('Baker.count') do
      post :create, baker: { brand_name: @baker.brand_name, draft: @baker.draft, expiry_date: @baker.expiry_date, facebook_page: @baker.facebook_page, general_contact_number: @baker.general_contact_number, general_email: @baker.general_email, halal_expiry: @baker.halal_expiry, instagram_handle: @baker.instagram_handle, listing_id: @baker.listing_id, merchant_id: @baker.merchant_id, question_1: @baker.question_1, self_collection_address: @baker.self_collection_address, verified: @baker.verified, website_online_ordering_page: @baker.website_online_ordering_page }
    end

    assert_redirected_to baker_path(assigns(:baker))
  end

  test "should show baker" do
    get :show, id: @baker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baker
    assert_response :success
  end

  test "should update baker" do
    patch :update, id: @baker, baker: { brand_name: @baker.brand_name, draft: @baker.draft, expiry_date: @baker.expiry_date, facebook_page: @baker.facebook_page, general_contact_number: @baker.general_contact_number, general_email: @baker.general_email, halal_expiry: @baker.halal_expiry, instagram_handle: @baker.instagram_handle, listing_id: @baker.listing_id, merchant_id: @baker.merchant_id, question_1: @baker.question_1, self_collection_address: @baker.self_collection_address, verified: @baker.verified, website_online_ordering_page: @baker.website_online_ordering_page }
    assert_redirected_to baker_path(assigns(:baker))
  end

  test "should destroy baker" do
    assert_difference('Baker.count', -1) do
      delete :destroy, id: @baker
    end

    assert_redirected_to bakers_path
  end
end
