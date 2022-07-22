require "test_helper"

class ListProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get shop" do
    get list_products_shop_url
    assert_response :success
  end
end
