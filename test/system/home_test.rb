# frozen_string_literal: true

require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'visiting the index' do
    user = users(:user_one)

    visit '/users/sign_in'
    assert_current_path '/users/sign_in'

    assert_selector('#user_email')
    fill_in 'user_email', with: user.email
    assert_selector('#user_password')
    fill_in 'user_password', with: 'password'
    click_on 'Log in'

    assert_current_path root_path
    assert_selector 'h1', text: 'Hello World'
  end
end
