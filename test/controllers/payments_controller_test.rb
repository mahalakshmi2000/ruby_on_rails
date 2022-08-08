require "test_helper"

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get user_payment" do
    get payments_user_payment_url
    assert_response :success
  end
end
