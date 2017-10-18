require 'test_helper'

class HomiesControllerTest < ActionController::TestCase
  setup do
    @homy = homies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homy" do
    assert_difference('Homy.count') do
      post :create, homy: { brand_name: @homy.brand_name, draft: @homy.draft, expiry_date: @homy.expiry_date, facebook_page: @homy.facebook_page, general_contact_number: @homy.general_contact_number, general_email: @homy.general_email, halal_expiry: @homy.halal_expiry, instagram_handle: @homy.instagram_handle, listing_id: @homy.listing_id, merchant_id: @homy.merchant_id, question_1: @homy.question_1, question_2: @homy.question_2, verified: @homy.verified, website_online_ordering_page: @homy.website_online_ordering_page }
    end

    assert_redirected_to homy_path(assigns(:homy))
  end

  test "should show homy" do
    get :show, id: @homy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homy
    assert_response :success
  end

  test "should update homy" do
    patch :update, id: @homy, homy: { brand_name: @homy.brand_name, draft: @homy.draft, expiry_date: @homy.expiry_date, facebook_page: @homy.facebook_page, general_contact_number: @homy.general_contact_number, general_email: @homy.general_email, halal_expiry: @homy.halal_expiry, instagram_handle: @homy.instagram_handle, listing_id: @homy.listing_id, merchant_id: @homy.merchant_id, question_1: @homy.question_1, question_2: @homy.question_2, verified: @homy.verified, website_online_ordering_page: @homy.website_online_ordering_page }
    assert_redirected_to homy_path(assigns(:homy))
  end

  test "should destroy homy" do
    assert_difference('Homy.count', -1) do
      delete :destroy, id: @homy
    end

    assert_redirected_to homies_path
  end
end
