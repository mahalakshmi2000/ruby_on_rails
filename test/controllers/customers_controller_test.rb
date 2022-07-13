require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get customers_login_url
    assert_response :success
  end
end
