# require 'watir'
require 'watir-webdriver'
require 'selenium-webdriver'
require 'cucumber'


Before do |scenario|
  p scenario

  p 'Opening the browser'


  capabilities = Selenium::WebDriver::Remote::Capabilities.new(:timeout => 200, :javascript_enabled=>true)

  $proxy= 'http://singtelproxy.net.vic'
  capabilities['proxy'] = Selenium::WebDriver::Proxy.new :pac => $proxy
# require 'watir' b=Watir::Browser.start 'http://singtelproxy.net.vic:Gomes1989'

  case ENV['browsername']
    when "chrome61"
      # capabilities['platform'] = 'WINDOWS'
      # capabilities['reportName'] = 'chrome'
      # capabilities['browserName'] = 'chrome'
      # capabilities['version'] = '61'
      Selenium::WebDriver::Chrome.driver_path = Dir.pwd+"\\features\\chromedriver.exe"

      # @browser = Watir::Browser.new :chrome
      # Watir::Browser.start "http://:{#$proxy}@"

      @browser = Watir::Browser.new(:remote,
      :url => "http://10.170.202.32:7777/wd/hub",
      :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome)

      # options = Selenium::WebDriver::Chrome::Options.new
      # options.ignore_protected_mode_settings = true
      # @browser = Watir::Browser.new.for(:chrome, options: options)

    when "firefox54"
      # capabilities['platform'] = 'WINDOWS'
      # capabilities['reportName'] = 'firefox'
      # capabilities['browserName'] = 'firefox'
      # capabilities['version'] = '54'
      Selenium::WebDriver::Firefox.driver_path = Dir.pwd+"\\features\\geckodriver.exe"
      # profile = Selenium::WebDriver::Firefox::Profile.new
      # profile["network.proxy.type"] = 2
      # profile.proxy = Selenium::WebDriver::Proxy.new :pac => $proxy
      @browser = Watir::Browser.new :firefox
    else
      p 'Please specify browser name in command eg: browsername=chrome61'
  end

  begin
    @browser = Watir::Browser.new(
        :desired_capabilities => capabilities
    )
  rescue =>e
    p e
  end


  @browser.window.maximize

end

After do |scenario|
  filename = scenario.name
  @browser.screenshot.save("target/#{filename}.png")
  embed("target/#{filename}.png", "image/png")
  @scenariostaus =scenario.status
  @browser.close
  p @scenariostaus

end
