Given(/^I launch the ems page$/) do
  # p "Welcome to Ruby"

  require 'rubygems'
  require 'selenium-webdriver'
  require 'rake'
  require 'watir-webdriver'
  require  'rspec'

  # Selenium::WebDriver::Chrome.driver_path ="N:\\Shared\\Ruby\\Singtel\\features\\chromedriver.exe"

  # @browser = Watir::Browser.new :chrome
  # @browser = Watir::Browser.new :chrome
  @browser.send_keys :return
  @browser.goto("https://www.sit2.test.aws.singtel.com/personal/my-account/rewards")

  # @browser.link(:text, "Products & Services").click

  #https://www.sit2.test.aws.singtel.com/personal/my-account/rewards
  #http://10.44.6.211:7017/acpapp/login.jsf

  @hpage = Homepage.new(@browser)
  @hpage.emslogin.title

  @hpage.ProductsServices.hover
  puts @hpage.MyAccount.text


end

When(/^I enter the username and password$/) do
  p " when hello"
end

Then(/^I should see login page$/) do
  p" then hello"
end


And(/^I click on login button$/) do
  @hpage.loginButton.click
  @hpage.emslogin
end


And(/^click on the singtel rewards link$/) do

  @hpage.MyAccount.hover
  @hpage.SingtelRewards.click
end

Then(/^validate singtel rewards url$/) do
  # if (@hpage.emslogin.url == "https://www.sit2.test.aws.singtel.com/personal/my-account/rewards/singtel-rewards")
  #   puts "true"
  # else
  #   puts "false"
  # end
end

Then("click on the viewAll rewards link") do
  @hpage.ViewAllRewards.click
end

Then("validate the dropdown list against LMS") do
  if (@hpage.emslogin.url == "https://www.sit2.test.aws.singtel.com/personal/my-account/rewards/singtel-rewards")
    puts "true"
  else
    puts "false"
  end
end

Then("click on {string} from category dropdown") do |string|

end

Then("click on {string} button") do |string|

end


And(/^click on "([^"]*)" from category dropdown$/) do |arg|
  @browser.scroll.to :bottom
  @hpage.dropdownSelect.select(arg)
end