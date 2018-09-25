class RegisterBrowser
  def self.register_chrome_browser
    puts "Running test(s) in chrome desktop browser at #{Time.now.strftime('%Y-%m-%d %H:%M:%S %p')}"
    Capybara.register_driver('chrome_desktop_browser'.to_sym) do |app|
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
          'args' => %w[--disable-infobars --ignore-certificate-errors --window-size=1300,1000]
        }
      )
      client = Selenium::WebDriver::Remote::Http::Default.new
      client.read_timeout = 60
      Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities, http_client: client)
    end
  end
end
