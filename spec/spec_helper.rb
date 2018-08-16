ENV["RACK_ENV"] ||= "test"



require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'capybara/dsl'

Capybara.app = LittleShopApp

RSpec.configure do |c|
  c.include Capybara::DSL
end

DatabaseCleaner.strategy = :truncation

# first thing!  clean the database
RSpec.configure do |config|
  config.before(:all) do
    DatabaseCleaner.clean
  end
  # after each, clean it again
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
