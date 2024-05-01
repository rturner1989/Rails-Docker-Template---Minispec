# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

gem 'carrierwave', '~> 3.0'
gem 'devise', '~> 4.9'
gem 'dotenv-rails'
gem 'faker'
gem 'font-awesome-sass', '~> 6.4.2'
gem 'redis'
gem 'rmagick'
gem 'sassc-rails'
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'view_component'

# OpenSource Analysis Tool
gem 'rails_performance'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:windows, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug'
  gem 'debug', platforms: [:mri, :windows]
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
  gem 'web-console'
  # Open emails in browser instead of sending
  gem 'letter_opener', '~> 1.4'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara', '~> 3.40'
  gem 'selenium-webdriver', '~> 4.20.0'
end
