require 'active_support/core_ext/string/inflections'
require 'capybara'
require 'capybara/dsl'
require 'cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'

require_all 'lib/helpers'
require_all 'lib/page_objects/sections'
require_all 'lib/page_objects/pages'

RegisterBrowser.register_chrome_browser

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = 'chrome_desktop_browser'.to_sym
  config.default_max_wait_time = 60
  config.app_host = 'https://www.tesco.com'
  config.match = :one
  config.exact = true
  config.ignore_hidden_elements = true
  config.visible_text_only = true
end

World(Capybara::DSL)
