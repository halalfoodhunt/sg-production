require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get merchant_dashboard" do
    get :merchant_dashboard
    assert_response :success
  end

  test "should get admin_dashboard" do
    get :admin_dashboard
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

end
