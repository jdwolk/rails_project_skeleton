require 'rails_helper'
require 'turnip/rspec'
require 'capybara/rails'
require 'capybara/rspec'
require 'turnip/capybara'
require 'capybara/poltergeist'
require 'database_cleaner'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app)
end

Capybara.javascript_driver = :poltergeist # or :selenium_chrome

# Require all Turnip steps
Dir.glob('spec/steps/**/*steps.rb') do |f|
  require_relative f.gsub!(/\Aspec\//, '')
end

RSpec.configure do |config|
  config.raise_error_for_unimplemented_steps = true
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, javascript: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
