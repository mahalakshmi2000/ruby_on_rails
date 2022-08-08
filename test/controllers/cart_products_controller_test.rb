require "test_helper"

class CartProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get cart" do
    get cart_products_cart_url
    assert_response :success
  end
end
