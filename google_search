require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating google search function" do
  it "inputs text and submits" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://www.google.com/"

    driver.find_element(css:'body > div.L3eUgb > div.o3j99.ikrT4e.om7nvf > form > div:nth-child(2) > div.A8SBwf > div.RNNXgb > div > div.a4bIc > input').send_keys('tacos atlanta')

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(css:'body > div.L3eUgb > div.o3j99.ikrT4e.om7nvf > form > div:nth-child(2) > div.A8SBwf.emcav > div.UUbT9 > div.aajZCb > ul > li:nth-child(1) > div > div.sbtc > div.sbl1 > span').displayed? }

    driver.find_element(css:'body > div.L3eUgb > div.o3j99.ikrT4e.om7nvf > form > div:nth-child(2) > div.A8SBwf.emcav > div.UUbT9 > div.aajZCb > ul > li:nth-child(1) > div > div.sbtc > div.sbl1 > span').click

  end
end
