require "capybara/cucumber"
require "capybara"
require "selenium-webdriver"
require "site_prism"
require "rspec"
require "cucumber"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.linkedin.com/home"
end

Capybara.default_max_wait_time = 50
Capybara.page.driver.browser.manage.window.maximize
