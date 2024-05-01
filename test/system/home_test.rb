# frozen_string_literal: true

require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit root_path
    assert_current_path root_path
    assert_selector 'h1', text: 'Hello World'
  end
end
