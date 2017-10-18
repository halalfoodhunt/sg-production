require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { brand_name: @supplier.brand_name, draft: @supplier.draft, expiry_date: @supplier.expiry_date, facebook_page: @supplier.facebook_page, general_contact_number: @supplier.general_contact_number, general_email: @supplier.general_email, halal_expiry: @supplier.halal_expiry, instagram_handle: @supplier.instagram_handle, listing_id: @supplier.listing_id, merchant_id: @supplier.merchant_id, question_1: @supplier.question_1, self_collection_address: @supplier.self_collection_address, verified: @supplier.verified, website_online_ordering_page: @supplier.website_online_ordering_page }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    patch :update, id: @supplier, supplier: { brand_name: @supplier.brand_name, draft: @supplier.draft, expiry_date: @supplier.expiry_date, facebook_page: @supplier.facebook_page, general_contact_number: @supplier.general_contact_number, general_email: @supplier.general_email, halal_expiry: @supplier.halal_expiry, instagram_handle: @supplier.instagram_handle, listing_id: @supplier.listing_id, merchant_id: @supplier.merchant_id, question_1: @supplier.question_1, self_collection_address: @supplier.self_collection_address, verified: @supplier.verified, website_online_ordering_page: @supplier.website_online_ordering_page }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
