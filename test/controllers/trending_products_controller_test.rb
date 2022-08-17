# frozen_string_literal: true

require 'test_helper'

class TrendingProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get trending_products_index_url
    assert_response :success
  end
end
