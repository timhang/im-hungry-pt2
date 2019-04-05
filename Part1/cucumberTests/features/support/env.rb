
require 'capybara'
require 'capybara/cucumber'
require 'rspec'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path=>"/Users/zhangweihang/Documents/GitHub/im-hungry-pt2/Part1/cucumberTests/features/support/chromedriver")
end

Capybara.default_driver = :chrome
