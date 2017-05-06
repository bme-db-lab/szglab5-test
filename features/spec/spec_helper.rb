require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'csv'
require 'fileutils'

Capybara.register_driver :firefox do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile.native_events = true
    profile.assume_untrusted_certificate_issuer = true
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => 'default')
end

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
end

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :chrome
    config.app_host = 'https://www.google.com' # change url
    config.default_max_wait_time = 15
end

Before do |scenario|
    page.driver.browser.manage.window.maximize
    Capybara.ignore_hidden_elements = true
    @current_scenario = scenario.name
end

After do |scenario|
    time = Time.now
    t = time.strftime('%m-%d-%Y-%H-%M')
    if scenario.failed?
        page.driver.browser.save_screenshot(@current_scenario + '_failed_at_' + t + '.png')
    end
end


#Capybara.register_driver :selenium do |app|
# browser = (ENV['browser'] || 'chrome').to_sym
#    Capybara::Selenium::Driver.new(app, :browser => browser)
#end