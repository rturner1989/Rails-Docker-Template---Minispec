require 'application_system_test_case'

class DeviseAuthSystemTest < ApplicationSystemTestCase
  test 'sign in as existing user and redirect' do
    user = users(:user_one)

    visit '/users/sign_in'
    assert_current_path '/users/sign_in'

    assert_selector('#user_email')
    fill_in 'user_email', with: user.email
    assert_selector('#user_password')
    fill_in 'user_password', with: 'password'
    click_on 'Log in'

    assert_current_path root_path
    assert_text 'Signed in successfully.'
  end

  test 'sign up a new user and redirect' do
    email = Faker::Internet.email
    password = Faker::Internet.password(min_length: 10, max_length: 30)

    visit '/users/sign_up'
    assert_current_path '/users/sign_up'

    assert_selector('#user_email')
    fill_in 'user_email', with: email
    assert_selector('#user_password')
    fill_in 'user_password', with: password
    assert_selector('#user_password_confirmation')
    fill_in 'user_password_confirmation', with: password
    click_button 'Sign up'

    assert_current_path root_path
    assert_text 'Welcome! You have signed up successfully.'

    assert User.last.email, email
  end
end
