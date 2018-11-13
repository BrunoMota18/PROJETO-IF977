require 'capybara'
require 'capybara/cucumber'
require 'cucumber/rails'
require 'capybara/rails'
require 'capybara/dsl'
include Capybara::DSL
require 'capybara/session'
require 'selenium/webdriver'
OmniAuth.config.test_mode = true