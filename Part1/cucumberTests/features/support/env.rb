
require 'capybara'
require 'capybara/cucumber'
require 'rspec'


driver = ""
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path=>"features/support/chromedriver")
end

Capybara.default_driver = :chrome
