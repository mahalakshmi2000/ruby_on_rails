# frozen_string_literal: true

require 'test_helper'

class DecoromsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get decoroms_index_url
    assert_response :success
  end
end
