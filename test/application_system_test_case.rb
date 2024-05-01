# frozen_string_literal: true

require 'test_helper'
require 'selenium/webdriver'
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  driven_by :remote_selenium

  # Add a configuration to connect to Chrome remotely through Selenium Grid
  Capybara.register_driver :remote_selenium do |app|
    # Pass our arguments to run headless
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--window-size=1400,1400')

    # and point capybara at our chromium docker container
    if ENV['HUB_URL']
      Capybara::Selenium::Driver.new(app, browser: :remote, url: ENV['HUB_URL'], capabilities: [options])
    else
      Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: [options])
    end
  end

  # This configures the system tests
  Capybara.configure do |config|
    config.always_include_port = true
    config.javascript_driver = :remote_selenium
    config.default_driver = :remote_selenium

    config.server_host = IPSocket.getaddress(Socket.gethostname)
    config.server_port = '4000'
    config.app_host = "http://#{IPSocket.getaddress(Socket.gethostname)}:3000"
  end
end
