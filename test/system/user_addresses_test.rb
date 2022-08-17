# frozen_string_literal: true

require 'application_system_test_case'

class UserAddressesTest < ApplicationSystemTestCase
  setup do
    @user_address = user_addresses(:one)
  end

  test 'visiting the index' do
    visit user_addresses_url
    assert_selector 'h1', text: 'User Addresses'
  end

  test 'creating a User address' do
    visit user_addresses_url
    click_on 'New User Address'

    fill_in 'Address', with: @user_address.address
    fill_in 'City', with: @user_address.city
    fill_in 'Landmark', with: @user_address.landmark
    fill_in 'Pincode', with: @user_address.pincode
    fill_in 'State', with: @user_address.state
    click_on 'Create User address'

    assert_text 'User address was successfully created'
    click_on 'Back'
  end

  test 'updating a User address' do
    visit user_addresses_url
    click_on 'Edit', match: :first

    fill_in 'Address', with: @user_address.address
    fill_in 'City', with: @user_address.city
    fill_in 'Landmark', with: @user_address.landmark
    fill_in 'Pincode', with: @user_address.pincode
    fill_in 'State', with: @user_address.state
    click_on 'Update User address'

    assert_text 'User address was successfully updated'
    click_on 'Back'
  end

  test 'destroying a User address' do
    visit user_addresses_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'User address was successfully destroyed'
  end
end
