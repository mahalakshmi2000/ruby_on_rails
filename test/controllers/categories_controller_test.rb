# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get category' do
    get categories_category_url
    assert_response :success
  end
end
