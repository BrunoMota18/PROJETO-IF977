require 'capybara'
require 'capybara/cucumber'
require 'cucumber/rails'
require 'capybara/rails'
require 'capybara/dsl'
include Capybara::DSL
require 'capybara/session'
require 'selenium/webdriver'
OmniAuth.config.test_mode = true
Before do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end
