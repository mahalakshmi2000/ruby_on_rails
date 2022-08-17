# frozen_string_literal: true

require 'test_helper'

class AddProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get add' do
    get add_products_add_url
    assert_response :success
  end
end
