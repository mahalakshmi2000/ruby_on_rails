require "test_helper"

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get address" do
    get user_details_address_url
    assert_response :success
  end
end
